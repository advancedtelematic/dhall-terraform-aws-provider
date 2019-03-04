require 'json'
require 'pry'

file = File.read './schema/test-schema.json'

resources = JSON.parse(file)

aws_instance = resources.first

# enum NestingMode {
  # INVALID = 0;
  # SINGLE = 1;
  # LIST = 2;
  # SET = 3;
  # MAP = 4;
# }

def print_block_type(name, block_type)
  type_name = classify(name)
  if block_type.list
    type = "List #{type_name}"
  else
    type = type_name
  end

  case
  when block_type.unknown
    "Unknown #{type} #{block_type.args}"
  when block_type.optional && block_type.list
    "Optional (#{type})"
  when block_type.optional
    "Optional #{type}"
  when block_type.list
    "List #{type}"
  else
    "Unknown #{type} #{block_type.args}"
  end
end

def convert_type(attribute)
  case attribute["type"]
  when "Bool"
    "Bool"
  when "List(Map(String))"
    "?? List(Map(String))"
  when "List(String)"
    "(List Text)"
  when "Map(Bool)"
    "?? Map(Bool)"
  when "Map(Number)"
    "?? Map(Number)"
  when "Map(String)"
    "?? Map(String)"
  when "Number"
    "Natural"
  when "Set(String)"
    "(List Text)"
  when "String"
    "Text"
  else
    "TODO"
  end
end

def print_optional(attribute)
  if attribute["required"]
    ""
  else
    "Optional "
  end
end

def field_from_arg(attribute)
  # "name": "vpc_security_group_ids",
  # "type": "Set(String)",
  # "required": false,
  # "optional": true,
  # "computed": true,
  # "sensitive": false

  "#{attribute["name"]}: #{print_optional(attribute)} #{convert_type(attribute)}".squeeze(" ")
end

def classify(str)
  str.split('_').collect(&:capitalize).join
end

def print_type(name, args, optional=false)
  if optional
    suffix = "Optional"
  else
    suffix = "Required"
  end
  %{
let #{classify(name)}#{suffix} =
  { #{args.first}
  , #{args.drop(1).join("\n  , ")}
  }
}
end

def print_in_block(name, args)
  title = classify(name)
  optional_title = "#{classify(name)}Optional"
  required_title = "#{classify(name)}Required"
  if args[:optional].count > 0
    str = %{
in
  { #{optional_title} = #{optional_title}
  , #{required_title}= #{required_title}
  , #{title} = #{optional_title} //\\\\ #{required_title}
  }
}
  else
    str = %{
in { #{classify(name)} = #{classify(name)} }
}
  end
  str
end

def fields_from_resource(resource)
  split = resource['attributes'].group_by { |a| a['required'] }
  required = split[true]&.map { |a| field_from_arg(a) } || []
  optional = split[false]&.map { |a| field_from_arg(a) } || []
  { optional: optional, required: required }
end


def resource_as_dhall_string(fields)
  file_content =
    print_type(resource["type_name"], fields[:optional], true) \
    + print_type(resource["type_name"], fields[:required]) \
    + print_in_block(resource["type_name"], fields)
  file_content
end

BlockType = Struct.new(:optional, :list, :unknown, :args)
def block_type(block)
  args = [block["nesting"], block["min_items"], block["max_items"]]

  case args
  when [2, 0, 1]
    BlockType.new(true, false, false, args)
  when [3, 0, 0]
    BlockType.new(true, true, false, args)
  else
    BlockType.new(false, false, true, args)
  end
end

DhallRepresentation = Struct.new(:fields, :blocks, :type_name, :block_type)
def dhall_representation_from_resource(resource)
  fields = fields_from_resource resource
  blocks = resource["block_types"].map { |bt| dhall_representation_from_resource(bt) }
  if resource["nesting"]
    bt = block_type(resource)
  else
    bt = nil
  end

  DhallRepresentation.new(
    fields,
    blocks,
    resource["type_name"],
    bt
  )
end

dhall_reps_instance = dhall_representation_from_resource aws_instance

#File.write('./dhall/aws_instance.dhall', content_aws_instance)

pry.inspect

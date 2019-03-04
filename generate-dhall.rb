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
    "?? List(Map(String))" # TODO
  when "List(String)"
    "(List Text)"
  when "Map(Bool)"
    "?? Map(Bool)" # TODO
  when "Map(Number)"
    "?? Map(Number)" # TODO
  when "Map(String)"
    "?? Map(String)" # TODO
  when "Number"
    "Natural"
  when "Set(String)"
    "(List Text)"
  when "String"
    "Text"
  else
    "TODO" # TODO
  end
end

def print_optional(attribute)
  if attribute["required"]
    ""
  else
    "Optional "
  end
end

def fields_from_blocks(blocks)
  # TODO handle optionals better
  blocks.map do |b|
    "#{b.type_name}: #{print_block_type(b.type_name, b.block_type)}"
  end
end

def field_from_arg(attribute)
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
  case
  when args.count == 0
  %{
let #{classify(name)}#{suffix} = {}
}
  when args.count == 1
  %{
let #{classify(name)}#{suffix} =
  { #{args.first} }
}
  when args.count >1
  %{
let #{classify(name)}#{suffix} =
  { #{args.first}
  , #{args.drop(1).join("\n  , ")}
  }
}
  end
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

def dhall_rep_to_string(dr)
  # + print_in_block(resource["type_name"], fields)
  dr.blocks.map { |d| dhall_rep_to_string(d) } \
  + [ print_type(dr.type_name, dr.fields[:optional], true) \
    + print_type(dr.type_name, dr.fields[:required]) \
    + "let #{classify(dr.type_name)} = #{classify(dr.type_name)}Optional //\\\\ #{classify(dr.type_name)}Required\n"
    ]
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
  # TODO handle optionals properly
  fields[:optional].append(fields_from_blocks(blocks)).flatten!

  DhallRepresentation.new(
    fields,
    blocks,
    resource["type_name"],
    bt
  )
end

dhall_reps_instance = dhall_representation_from_resource aws_instance

dhall_aws_to_str = dhall_rep_to_string(dhall_reps_instance)

#File.write('./dhall/aws_instance.dhall', content_aws_instance)

pry.inspect

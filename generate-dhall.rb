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
    "Unknown #{type} #{block_type.args}" # TODO print warning here
  end
end

def convert_type(attribute)
  case attribute["type"]
  when "Bool"
    "Bool"
  when "List(Map(String))"
    # https://www.terraform.io/docs/providers/aws/r/autoscaling_group.html#tag-and-tags
    "(List { key : Text, value : Text, propagate_at_launch : Bool })"
  when "List(String)"
    "(List Text)"
  when "Map(Bool)"
    # https://www.terraform.io/docs/providers/aws/r/api_gateway_method.html#request_parameters
    "(List { mapKey : Text, mapValue : Bool })"
  when "Map(Number)"
    # https://www.terraform.io/docs/providers/aws/r/lambda_alias.html#additional_version_weights
    "(List { mapKey : Natural, mapValue : Double })"
  when "Map(String)"
    "(List { mapKey : Text, mapValue : Text })"
  when "Number"
    "Natural"
  when "Set(String)"
    "(List Text)"
  when "String"
    "Text"
  else
    "TODO" # TODO unreachable? Maybe warn or exit here
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

def optional_title(name)
  "#{classify(name)}Optional"
end

def required_title(name)
  "#{classify(name)}Required"
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

def fields_from_resource(resource)
  split = resource['attributes'].group_by { |a| a['required'] }
  required = split[true]&.map { |a| field_from_arg(a) } || []
  optional = split[false]&.map { |a| field_from_arg(a) } || []
  { optional: optional, required: required }
end

def dhall_rep_to_string(dr)
  dr.blocks.map { |d| dhall_rep_to_string(d) } \
  + [ print_type(dr.type_name, dr.fields[:optional], true) \
    + print_type(dr.type_name, dr.fields[:required]) \
    + "let #{classify(dr.type_name)} = #{classify(dr.type_name)}Optional //\\\\ #{classify(dr.type_name)}Required\n"
    ]
end

def get_all_type_names(dr)
  names = dr.blocks.map { |b| get_all_type_names(b) }
  names << { name: dr.type_name, optional: dr.block_type&.optional }
  names.flatten
end

def dhall_in_block_to_string(dr)
  names = get_all_type_names(dr).reverse
  str = names.map { |n|
    if n[:optional]
      [ "#{optional_title(n[:name])} = #{optional_title(n[:name])}",
        "#{required_title(n[:name])} = #{required_title(n[:name])}",
        "#{classify(n[:name])} = #{classify(n[:name])}" ]
    else
      "#{classify(n[:name])} = #{classify(n[:name])}"
    end
  }.flatten

  # TODO missing top level *Required and *Optional exports
  %{
in
{ #{str.join("\n, ")}
}
}
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
    # TODO add more combinations from ./schema/tf-aws-schema.json
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
  # Need to apped the optional ones to [:optional]
  # and the required ones to [:required]
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

File.write('./dhall/aws_instance.dhall', dhall_aws_to_str.join("") + dhall_in_block_to_string(dhall_reps_instance))

#pry.inspect

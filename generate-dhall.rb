require 'json'
require 'pry'

file = File.read './schema/tf-aws-schema.json'

resources = JSON.parse(file)

def print_block_type(name, block_type)
  type_name = classify(name)
  if block_type.list
    type = "List #{type_name}"
  else
    type = type_name
  end

  case
  when block_type.optional && block_type.list
    "Optional (#{type})"
  when block_type.optional
    "Optional #{type}"
  else
    type
  end
end

def print_attribute_type(attribute)
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
    print "Unknown type #{attribute["type"]}"
    "Unknown type"
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
  blocks.map do |b|
    "#{b.type_name}: #{print_block_type(b.type_name, b.block_type)}"
  end
end

def field_from_arg(attribute)
  "#{attribute["name"]}: #{print_optional(attribute)} #{print_attribute_type(attribute)}".squeeze(" ")
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
  when args.count == 0 # TODO Are empty types even wanted?
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

def dhall_rep_to_string(dr)
  dr.blocks.map { |d| dhall_rep_to_string(d) } \
  + [ print_type(dr.type_name, dr.fields[:optional], true) \
    + print_type(dr.type_name, dr.fields[:required]) \
    + "let #{classify(dr.type_name)} = #{classify(dr.type_name)}Optional //\\\\ #{classify(dr.type_name)}Required\n"
    ]
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

  # TODO not exporting empty Optionals, possibly correct?
  %{
in
{ #{str.join("\n, ")}
}
}
end

def only_computed?(attribute)
  # TODO find out if this drops more attributes than intended
  (attribute["computed"] == true &&
   attribute["required"] == false &&
   attribute["optional"] == false &&
   attribute["sensitive"] == false)
end

def fields_from_resource(resource)
  split = resource['attributes']
    .delete_if { |a| only_computed?(a)}
    .group_by { |a| a['required'] }
  required = split[true]&.map { |a| field_from_arg(a) } || []
  optional = split[false]&.map { |a| field_from_arg(a) } || []
  { optional: optional, required: required }
end

def get_all_type_names(dr)
  names = dr.blocks.map { |b| get_all_type_names(b) }
  names << { name: dr.type_name, optional: (dr.fields[:optional].count > 0) }
  names.flatten
end

# enum NestingMode {
  # INVALID = 0;
  # SINGLE = 1;
  # LIST = 2;
  # SET = 3;
  # MAP = 4;
# }

BlockType = Struct.new(:optional, :list, :record)
def block_type(block)
  nesting = block["nesting"]
  min = block["min_items"]
  max = block["max_items"]

  # TODO probably buggy, need to test more cases
  # TODO drop _some_ computed values
  list = (nesting == 2 || nesting == 3)
  record = nesting == 4
  optional = min == 0
  if max == 1
    record = true
    list = false
  end

  BlockType.new(optional, list, record)
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
  # TODO tidy up
  nested_blocks = blocks.flatten
  split_nested_blocks = nested_blocks.group_by { |b| b.block_type.optional }
  fields[:optional].append(fields_from_blocks(split_nested_blocks[true])).flatten! if split_nested_blocks[true]
  fields[:required].append(fields_from_blocks(split_nested_blocks[false])).flatten! if split_nested_blocks[false]

  DhallRepresentation.new(
    fields,
    blocks,
    resource["type_name"],
    bt
  )
end

resources.map do |r|
  print "#{r["type_name"]}\n"
  dr = dhall_representation_from_resource(r)
  dhall_types_as_string = dhall_rep_to_string(dr).join("")
  dhall_in_block_as_string = dhall_in_block_to_string(dr)

  dhall_file_content = dhall_types_as_string + dhall_in_block_as_string
  File.write("./dhall/#{dr.type_name}.dhall", dhall_file_content)
end

#aws_instance = resources.first
#dhall_reps_instance = dhall_representation_from_resource aws_instance
#dhall_aws_to_str = dhall_rep_to_string(dhall_reps_instance)
#File.write('./dhall/aws_instance.dhall', dhall_aws_to_str.join("") + dhall_in_block_to_string(dhall_reps_instance))

pry.inspect

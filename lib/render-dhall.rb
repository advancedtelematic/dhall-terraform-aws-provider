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
    type_name = optional_title(name)
  else
    type_name = required_title(name)
  end
  case
  when args.count == 0 # TODO Are empty types even wanted?
  %{
let #{type_name} = {}
}
  when args.count == 1
  %{
let #{type_name} =
  { #{args.first} }
}
  when args.count >1
  %{
let #{type_name} =
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

def get_all_type_names(dr)
  names = dr.blocks.map { |b| get_all_type_names(b) }
  names << { name: dr.type_name, optional: (dr.fields[:optional].count > 0) }
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

def field_from_arg(attribute) # TODO should this return string or an object that gets printed later?
  "#{attribute["name"]}: #{print_optional(attribute)} #{print_attribute_type(attribute)}".squeeze(" ")
end

def fields_from_resource(resource) # TODO move out of render?
  split = resource['attributes']
    .delete_if { |a| only_computed?(a)}
    .group_by { |a| a['required'] }
  required = split[true]&.map { |a| field_from_arg(a) } || []
  optional = split[false]&.map { |a| field_from_arg(a) } || []
  { optional: optional, required: required }
end

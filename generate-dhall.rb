require 'json'
require 'pry'

file = File.read './schema/test-schema.json'

resources = JSON.parse(file)

aws_instance = resources.first

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
  if attribute["optional"]
    "Optional "
  else
    ""
  end
end

def dhall_field_from_arg(attribute)
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

def types_from_resource(resource)
  split = resource['attributes'].group_by { |a| a['optional'] }
  required = split[false].map { |a| dhall_field_from_arg(a) }
  optional = split[true].map { |a| dhall_field_from_arg(a) }
  { optional: optional, required: required }
end

def dhall_file_from_resource(resource)
  types = types_from_resource resource
  # TODO handle empty optional/required
  file_content =
    print_type(resource["resource_title"], types[:optional], true) \
    + print_type(resource["resource_title"], types[:required]) \
    + print_in_block(resource["resource_title"], types)
  file_content
end

content_aws_instance = dhall_file_from_resource aws_instance

File.write('./dhall/aws_instance', content_aws_instance)

pry.inspect

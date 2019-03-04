require 'pry'

resources_string = `tfschema resource list aws`
resources = resources_string.split("\n")

resource_args = resources.map do |r|
  print "#{r}\n"
  JSON.parse(`tfschema resource show -format=json #{r}`)
    .merge({ 'resource_title' => r })
end

File.write("schema/tf-aws-schema.json", resource_args.to_json)

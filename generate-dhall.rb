require 'json'
require 'pry'
require './lib/render-dhall.rb'

file = File.read './schema/tf-aws-schema.json'

resources = JSON.parse(file)

def only_computed?(attribute)
  # TODO find out if this drops more attributes than intended
  (attribute["computed"] == true &&
   attribute["required"] == false &&
   attribute["optional"] == false &&
   attribute["sensitive"] == false)
end

Field = Struct.new(:name, :type, :optional, :is_block?)
def field_from_block(block)
  nesting = block["nesting"]
  min = block["min_items"]
  max = block["max_items"]

  optional = (min == 0)

  type = :list if (nesting == 2 || nesting == 3)
  type = :record if nesting == 4
  type = :record if max == 1

  Field.new(block["type_name"], type, optional, true)
end

def field_from_attribute(attribute)
  Field.new(attribute["name"], attribute["type"], !attribute["required"], false)
end

Type = Struct.new(:name, :fields, :blocks, :exported_attributes)

def type_from_resource(resource)
  blocks = resource["block_types"].map { |bt| type_from_resource(bt) }
  name = resource["type_name"]

  exported_attributes = resource["attributes"].select { |a| only_computed?(a) }
  fields = resource["attributes"].delete_if { |a| only_computed?(a) }.map { |f| field_from_attribute(f) }
  fields_from_blocks = resource["block_types"].map { |bt| field_from_block(bt) }
  all_fields = fields.concat(fields_from_blocks)

  Type.new(name, all_fields, blocks, exported_attributes)
end

gds = resources.map do |r|
  print "#{r["type_name"]}\n"
  type_from_resource(r)
end

render_all(gds)
pry.inspect

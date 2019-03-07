require 'json'
require 'pry'
require './lib/render-dhall.rb'

file = File.read './schema/tf-aws-schema.json'

resources = JSON.parse(file)

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

# pry.inspect

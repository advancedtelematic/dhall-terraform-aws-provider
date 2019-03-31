Field = Struct.new(:name, :type, :optional, :is_block?)
Type = Struct.new(:name, :fields, :blocks, :exported_attributes, :parents)

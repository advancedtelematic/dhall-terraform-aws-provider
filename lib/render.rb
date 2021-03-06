module Render
  def Render.classify(str)
    str.split('_').collect(&:capitalize).join
  end

  def Render.instanceify(str)
    classify(str).sub(/^\w/) {$&.downcase}
  end

  def Render.dhall_type_from_block(field)
    type_name = classify(field.name)
    if field.optional && field.type == :list
      "(List #{type_name})"
    elsif field.type == :list
      "List #{type_name}"
    else
      type_name
    end
  end

  def Render.dhall_type_from_attribute(type)
    case type
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
      print "Unknown type #{type}"
      "Unknown type"
    end
  end

  def Render.dhall_field(name, type, optional)
    if optional
      return "#{name} : Optional #{type}"
    else
      return "#{name} : #{type}"
    end
  end

  def Render.get_type(field)
    if field.is_block?
      dhall_type_from_block(field)
    else
      dhall_type_from_attribute(field.type)
    end
  end

  def Render.render_dhall_field(field, parent_type)
    type = get_type(field)
    return dhall_field(field.name, type, field.optional)
  end

  def Render.render_none_field(field, parent_type)
    if field.is_block?
     type =  dhall_default_type_from_block(field, parent_type)
    else
      type = dhall_type_from_attribute(field.type)
    end
    return "#{field.name} = None #{type}"
  end

  def Render.dhall_type_template(type_name, fields, func = :render_dhall_field, parent_type = nil)
    field_strings = fields.map { |f| Render.send(func, f, parent_type) }.join("\n  , ")
    if fields.count == 0
    %{
let #{type_name} = {}
}
    elsif fields.count == 1
    %{
let #{type_name} =
  { #{field_strings} }
}
    elsif fields.count > 1
    %{
let #{type_name} =
  { #{field_strings}
  }
}
    end
  end

  def Render.render_dhall_type(type)
    type_name = classify(type.name)

    op_type_name = "#{type_name}Optional"
    op_fields = type.fields.select { |f| f.optional }
    op_str = dhall_type_template(op_type_name, op_fields)

    req_type_name = "#{type_name}Required"
    req_fields = type.fields.select { |f| !f.optional }
    req_str = dhall_type_template(req_type_name, req_fields)

    full_type = "let #{type_name} = #{op_type_name} //\\\\ #{req_type_name}\n"
    [op_str, req_str, full_type]
  end

  def Render.render_dhall_file(type)
    str = type.blocks.map { |b| render_dhall_file(b) }
    str.append(render_dhall_type(type))
  end

  def Render.render_all(types)
    types.each do |t|
      content = render_dhall_file(t).flatten.join("")
      in_block = render_in_block(t)
      File.write("./dhall/#{t.name}.dhall", content + in_block)
    end
  end

  ## in block
  def Render.get_all_type_names(type)
    names = type.blocks.map { |b| get_all_type_names(b) }
    names << { name: type.name, optional?: (type.fields.select { |f| f.optional }.count > 0) }
    names.flatten
  end

  def Render.render_in_block(type)
    names = get_all_type_names(type).reverse

    str = names.map { |n|
      type_name = classify(n[:name])
      op_type_name = "#{type_name}Optional"
      req_type_name = "#{type_name}Required"

      if n[:optional?]
        [ "#{op_type_name} = #{op_type_name}",
          "#{req_type_name} = #{req_type_name}",
          "#{type_name} = #{type_name}" ]
      else
        "#{type_name} = #{type_name}"
      end
    }.flatten

    # TODO not exporting empty Optionals, possibly correct?
    %{
in
{ #{str.join("\n, ")}
}
}
  end

  ## defaults
  def Render.render_default_type(type, parent_type)
    type_name = instanceify(type.name)

    op_type_name = "#{type_name}"
    op_fields = type.fields.select { |f| f.optional }
    op_str = dhall_type_template(op_type_name, op_fields, :render_none_field, parent_type)

    [op_str]
  end

  def Render.render_default_file(type, parent_type)
    str = type.blocks.map { |b| render_default_file(b, parent_type) }
    str.append(render_default_type(type, parent_type))
  end

  def Render.render_defaults(types)
    types.each do |t|
      parent_type = t.name
      content = render_default_file(t, parent_type).flatten.join("")
      in_block = render_defaults_in_block(t, false)
      File.write("./default/#{t.name}.dhall", content + in_block)
    end
  end

  def Render.dhall_default_type_from_block(field, parent_type)
    type_name = classify(field.name)
    path = "(../dhall/#{parent_type}.dhall).#{type_name}"
    if field.optional && field.type == :list
      "(List #{path})"
    elsif field.type == :list
      "List #{path}"
    else
      path
    end
  end

  def Render.render_defaults_in_block(type, only_optionals=false)
    names = get_all_type_names(type).reverse

    str = names.map { |n|
      type_name = instanceify(n[:name])
      op_type_name = "#{type_name}"

      if n[:optional?]
        [ "#{op_type_name} = #{op_type_name}"]
      else
        []
      end
    }.flatten

    %{
in
{ #{str.join("\n, ")}
}
}
  end
end

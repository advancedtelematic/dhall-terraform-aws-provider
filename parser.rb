require 'pry'

content = File.read 'instance.html.markdown'

want = content.match(/##\ Argument\ Reference(.*)##\ Attributes\ Reference/m)[1]
       .strip

def section_title?(str)
  str.include?('upport') && str.include?('following')
end

list = want.split(/\n/).reject(&:empty?)
           .select { |l| l.start_with?('* `', '###') || section_title?(l) }

blocks = list.slice_before { |line| line.include? '###' }

def arg_name(str)
  str[/\S*`/]&.tr('\`', '')
end

def optional?(str)
  str.include?('Optional')
end

TypeGuess = Struct.new(:bool, :int, :text, :list_text, :enum)

def guess_type(arg)
  t_bool = 0
  t_int = 0
  t_text = 0
  t_list_text = 0
  t_enum = 0

  t_bool += 75 if arg[:name]&.include?('enable') || arg[:name]&.include?('disable')
  t_bool += 55 if arg[:description]&.include?('\`true\`') || arg[:name]&.include?('\`false\`')
  t_bool += 40 if arg[:description]&.downcase.include?('if true') || arg[:name]&.include?('if false')
  t_bool += 20 if arg[:description]&.downcase.include?('true') || arg[:name]&.include?('false')

  t_int += 75 if arg[:name]&.end_with?('count')
  t_int += 50 if arg[:name]&.end_with?('size')
  t_int += 50 if arg[:name]&.end_with?('ami')
  t_int += 40 if arg[:description]&.downcase.include?('integer')

  t_text += 75 if arg[:name]&.end_with?('_id')
  t_text += 75 if arg[:name]&.end_with?('_ip')
  t_text += 75 if arg[:name]&.end_with?('_name')
  t_text += 30 if arg[:name]&.end_with?('_address')
  t_text += 40 if arg[:name]&.end_with?('_group')
  t_text += 50 if arg[:name]&.end_with?('_zone')

  if arg[:description]&.match?(/Can\ be `.*[`|`,] or/)
    t_text += 55
    t_enum += 60
  elsif arg[:description]&.match?(/Can\ be `.*`, `.*/)
    t_text += 45
    t_enum += 60
  end

  t_enum += 15 if arg[:description]&.downcase.match?(/default: `\"/)

  t_list_text += 75 if arg[:name]&.include?('_ids')
  t_list_text += 75 if arg[:name]&.end_with?('_ips')
  t_list_text += 30 if arg[:name]&.end_with?('_groups')
  t_list_text += 30 if arg[:name]&.end_with?('_addresses')

  TypeGuess.new(t_bool, t_int, t_text, t_list_text, t_enum)
end

stuff = blocks.map do |b|
  if b.first.start_with?('###')
    block_name = b.first
    args = b.drop(1)
  else
    block_name = 'foo'
    args = b
  end

  resource_arguments =
    args.map do |l|
      { name: arg_name(l),
        optional: optional?(l),
        description: l,
        possible_section_title: section_title?(l)
      }
    end

  args_with_types = resource_arguments.map { |ra| ra.merge({ type_guess: guess_type(ra) } )}

  { md_block_name: block_name,
    args: args_with_types
  }
end

pry.inspect

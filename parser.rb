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

TypeGuess = Struct.new(:bool, :int, :str, :list_string)

def guess_type(arg)
  t_bool, t_int, t_str, t_list_string = 0
  list_string += 50 if arg[:name].include?('_ids')

  TypeGuess.new(t_bool, t_int, t_str, t_list_string)
end

stuff = blocks.map do |b|
  if b.first.start_with?('###')
    block_name = b.first
    args = b.drop(1)
  else
    block_name = 'foo'
    args = b
  end

  { md_block_name: block_name,
    args: args.map do |l|
      { name: arg_name(l),
        optional: optional?(l),
        description: l,
        possible_section_title: section_title?(l)
      }
    end
  }
end

pry.inspect

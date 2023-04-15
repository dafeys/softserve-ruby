
def outer1(arg, &block)
  block.call(arg)
  block
end

variable = outer1(3) {puts 'Block'}
puts '------------1-----------'
p variable
variable.call
puts '------------2---------'
a = variable.call
p a
puts '------------3--------'

def instead_of_block(arg)
  puts "arg is #{arg}"
end

variable = outer1(5, &method(:instead_of_block))

p "method &#{variable}"

pr = proc {|arg|puts "#{arg} from proc"}

outer1(5, &pr)

puts '------------4------------'


def outer2(block)
  block
end

puts outer2('BBlock')

puts '------------5----------'



# block

def one_two_three
  yield 1
  yield 2
  yield 3
end

one_two_three {|number| puts number * 10}


# explicit block

def explicit_block(&block)
  block.call
  #yield
end

explicit_block { puts "Explicit block" }
puts


def outer(&block)
  block.call
  block
end

variable = outer {puts'Block'}
variable.call
puts


# example 1
def number_order(order)
  yield order
end

puts number_order(3){|i| 2**i}

# example 2
def number_order(order, &block)
  block.call(order)
end

puts number_order(3){|i| 2**i}

# block_given?
# example 1 - no arg
def do_something_with_block
  return "No block given" unless block_given?
  yield
end

puts do_something_with_block
puts


# example 2 - explicit block
def explicit_block(&block)
  return 'other part of code' unless block_given?
  block.call
end

explicit_block {puts 'Explicit block called'}

puts explicit_block
puts

# example 3 - default args
def do_something_with_block
  if block_given?
    yield
  else puts 'No block given'
  end
end

do_something_with_block{|i=0| puts "Block with #{i}"}

do_something_with_block
puts


# example 3 - two methods
def adult?(number)
  number >= 18
end

def accessed?(role)
  role == 'admin' || role == 'manager'
end

def print_info(text)
  return unless block_given?

  if yield
    puts text
  else
    puts 'Infirmation is not available'
  end
end

age = 18
role = 'user'

print_info('Text') { adult?(age) }
print_info('Text') { accessed?(role) }
print_info('Some text') { adult?(age) || accessed?(role)}
print_info('Text')
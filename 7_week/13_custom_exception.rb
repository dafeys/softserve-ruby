class NotFoundError < StandardError
  def initialize(element = '')
    @element = element
  end

  def to_s
    "Element #{@element} no found"
  end
end


class User
  @@users = ['one', 'two']

  def self.get_index(element)
    raise NotFoundError, element unless @@users.include? element
    @@users.index(element)
  end
end

begin
  puts User.get_index('two')
rescue NotFoundError
  puts $!.message
end


#==== retry keyword
def div(a, b)
  a / b
end

count = 0
begin
  count += 1
  puts 'first num'
  first = gets.strip.to_i
  puts 'second'
  second = gets.strip.to_i
  puts div(first, second)
rescue StandardError
  puts $!.message
  retry if count < 3
end
puts

#==== catch / throw
value = catch :zero do
  puts 'Enter number'
  a = gets.strip.to_i
  throw :zero, 34 if a.zero?
  5/a
end

class Cat
  attr_reader :nickname

  def initialize(title)
    @nickname = title
  end

  def to_s
    'I\'m a cat'
  end

  def sound
    'miy'
  end
end

class Dog < Cat
  def sound
    'woof'
  end
end

cat = Cat.new 'Purr'
puts "#{cat.nickname} says #{cat.sound}"

dog = Dog.new 'Jack'
puts "#{dog.nickname} says #{dog.sound}"
puts dog


#==== super
class TwoFields
  attr_accessor :first, :second

  def initialize(a,b)
    @first = a
    @second = b
  end

  def to_s
    "1- #{first}, 2- #{second}"
  end
end

class ThreeFields < TwoFields
  attr_accessor :third

  def initialize(a, b, c)
    super(a, b)
    @third = c
  end

  def to_s
    "#{super}, 3- #{third}"
  end
end

three = ThreeFields.new(11, 22, 33)
puts three
puts

#==== animal sample
class Animal
  attr_accessor :name

  def type
    puts 'Animal Type'
  end

  def my_name
    "My name is #{name}"
  end
end

class Mammal < Animal

  def type
    puts 'Mammal Type'
  end
end

class Horse < Mammal

end

horse = Horse.new
horse.type
puts horse.my_name
# puts horse.my_name('other')

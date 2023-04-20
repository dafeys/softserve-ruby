class Car
  def initialize(color, speed)
    @color = color  # variable of class instance
    @max_speed = speed
  end
end

car1 = Car.new("red", 200)
car2 = Car.new("green", 90)

p car1
p car2

puts "car1 color = #{car1.instance_variable_get('@color')}"
puts "car2 speed = #{car2.instance_variable_get('@max_speed')}"
puts


#==== variable of class
class Moto
@@count = 0
  def initialize(color, speed)
    @@count += 1
    @color = color 
    @max_speed = speed
  end
end

moto1 = Moto.new("black", 120)
moto2 = Moto.new("blue", 140)

puts Moto.class_variable_get('@@count')


#==== variables of instance
class MyClass
  def initialize var
    @instance_var = var 
  end
end

obj1 = MyClass.new 5
obj2 = MyClass.new 34
p obj1.instance_variable_get('@instance_var')
puts


#==== class method
class Car
  @@count = 0

  def self.total
    @@count
  end

  def initialize(color, speed)
    @@count += 1
    @color = color  # variable of class instance
    @max_speed = speed
  end

  def move(direction)
    puts "#{@color} car: I'm going #{direction}"
  end

  def move_ahead
    move('ahead')
  end

  def info
    puts "#{@color} car is one from #{@@count} cars"
  end

end

car1 = Car.new("red", 200)
car2 = Car.new("green", 90)

car1.move('right')
car2.move('no')

car1.info
puts Car.class_variable_get('@@count')

car1.move_ahead
p Car.total


#==== self
class Ghost1
  def reflect
    self
  end
end

g = Ghost1.new
p g.reflect == g  # true


class Ghost2
  def self.reflect
    self
  end
end

p Ghost2.reflect == Ghost2  # true


class Example
  def do_something
    m1 = "string"
    puts m1
    puts self.m1
  end

  def m1
    "string m1"
  end
end

Example.new.do_something

class Car
  attr_accessor :color
  attr_reader :max_speed
  attr_writer :owner

  def initialize(color, speed)
    @color = color
    @max_speed = speed
  end

  # def get_color
  #   @color
  # end

  # def set_color(color)
  #   @color = color
  # end
end

car = Car.new('red', 500)

car.instance_variable_set('@color', 'ruby')
puts "#{car.instance_variable_get('@color')}"
puts

# car.set_color('green')
# p car.get_color

car.color = 'black'
p car.color

car.owner = 'Finkle'
p car.instance_variable_get('@owner')
car.instance_variable_set('@super', 'yes')
p car
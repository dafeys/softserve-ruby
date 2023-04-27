class Rectangle
  GRAM_TO_POUND = 0.00220462
  POUND_TO_GRAM = 453.592

  def initialize(x, y)
    @width = x
    @height = y
  end

  def paint_amount(density, unit)
    density *= POUND_TO_GRAM if unit != '1'
    @width * @height * density
  end

  def self.to_pound(gram)
    gram * GRAM_TO_POUND
  end

  private

  def self.to_gram(pound)
    pound * POUND_TO_GRAM
  end

  public

  def to_s # when use puts
    "#{@width} x #{@height}"
  end

  def inspect # when use p
    "Width = #{@width}, height = #{@height}"
  end
end

# OMG
puts 'Enter sizes separated by coma'
xy = gets.strip.split(/\s*,\s*/)
ar = Rectangle.new(xy[0].to_i, xy[1].to_i)
puts 'Enter paint consumption'
puts "\tEnter 1 if paint consumption measured in grams"
choice = gets.strip
choice_for_output = choice == '1' ? 'gr' : 'pounts'
puts "\tNow enter amount in #{choice_for_output} : "
volume = ar.paint_amount(gets.strip.to_f, choice)
puts "Do you want to get the answer in grams? (y/n)"
choice = gets.strip

choice_for_output = choice_for_output == 'gr' ? 'pounts' : 'gr' if choice != 'y'
choice_for_output = 'pounts' if choice == 'y' && choice_for_output == 'pounts'

if choice_for_output == 'pounts'
  volume = Rectangle.to_pound(volume)
end

puts "You need #{volume} #{choice_for_output} paint for area #{ar}"
p ar
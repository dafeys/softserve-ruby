module Validation
  MIN_NAME_LENGTH = 2
  MAX_NAME_LENGTH = 40
  def name?(str)
    str[0] >= 'A' && str[0] <= 'Z'
  end

  def lenght?(str)
    str.length >= MIN_NAME_LENGTH && str.length <= MAX_NAME_LENGTH
  end
end

module Color
  ITEMS = ['blue', 'green', 'gray', 'dark']
  def color?(var)
    ITEMS.include?(var)
  end
end

class Student
  include Validation, Color

  attr_reader :first_name, :last_name

  def initialize(first, last)
    if name?(first) && name?(last) && lenght?(first) && lenght?(last)
      @first_name = first
      @last_name = last
    end
  end

  def eye_color=(color)
    @eye_color = color if color?(color)
  end

  def to_s
    "#{@first_name} #{@last_name}, eye color = #{@eye_color}"
  end
end


person = Student.new('Josh', 'Curandot')
person.eye_color = 'gray'
puts person
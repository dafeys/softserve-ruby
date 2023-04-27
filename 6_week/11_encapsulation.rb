#==== private methods & constants
require 'date'

class Student
  attr_accessor :dob

  FIRST_CONSTANT = 5

  def initialize dob
    @dob = dob
  end

  private 

  def age
    now = Date.today
    year = now.year - @dob.year

    year -= 1 if @dob.month > now.month || (@dob.month == now.month && @dob.day > now.day)
    year
  end
end

st = Student.new(Date.parse('2001-04-10'))
# puts st.age

puts Student::FIRST_CONSTANT
Student::FIRST_CONSTANT = 33
puts Student::FIRST_CONSTANT
puts


#==== overriding operators in a class
class MyString
  attr_reader :str

  def initialize(data)
    @str = data
  end

  def <(other)
    @str.length < other.str.length
  end

  def to_s  # puts
    "data = #{str}"
  end

  def inspect # p
    "Data = #{str}"
  end
end

str1 = MyString.new('10')
str2 = MyString.new('3')
puts str1 < str2

puts str1
puts str1.inspect
p str2
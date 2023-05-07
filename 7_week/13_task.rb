#==== task1
# def sqrt(num)
#   raise StandardError, 'The root of a negative number does not exist in rational numbers' if num <0
#   (num**0.5).round(4)
# end

# p sqrt(-3)

#==== task2

# class PhoneFormatException < StandardError
#   def initialize(num)
#     @num = num
#   end

#   def to_s
#     "Phone number #{@num} is incorrect. You should enter phone in format +38dddddddddd"
#   end
# end

# module Validation 
#   def phone_valid?(num)
#     re = /^\+38[0-9]{10}$/
#     re.match?(num)
#   end
# end

# include Validation

# class User
#   attr_reader :name

#   def initialize(name)
#     @name = name
#   end

#   def phone=(num)
#     raise PhoneFormatException, num unless Validation.phone_valid?(num)

#     @phone = num
#   end
# end

# user = User.new('Name')



# # begin
# #   user.phone = '+38141144112'
# # rescue PhoneFormatException
# #   puts $!.message
# # end

# # p user

# # include Validation

# num = '+480876756543'
# p Validation.phone_valid?(num)

#==== task 2

def third_order(num)
  count = 0
  begin
    count += 1
    rand_num = rand(1..num)
    puts "What is result #{rand_num} * #{rand_num} * #{rand_num}?"
    user_answer = gets.strip.to_i
    raise StandardError.new, 'wrong answer' unless user_answer == rand_num**3
  rescue StandardError
    retry if count < 3
    puts 'Try next time'
  else
    puts 'Good job'
  end
end

third_order(5)
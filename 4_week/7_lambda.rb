# lambda function declaration
say_something = -> {puts "This is lambda"}

say_something = lambda { puts "Lambda"}

say_something = lambda do
  puts "lambda"
end

# invoke lambda
say_something.call
say_something.()
say_something[]
say_something.===


# sample 1
times_two = ->(x = 0){x * 2}
puts times_two.call(10)
puts times_two.call
puts

# sample 2
check_access = lambda {|name|
  name == 'admin'  # return true or false
}
name = 'admin'
if check_access.call(name)
  puts 'Access allowed'
else
  puts 'Access denied'
end

puts

# ***  USING LAMBDA IN METHODS   ***
# sample 1 - pass lambda into the method
my_lambda = lambda {|name|
  puts "Hello #{name} from my_lambda"
}

def method_with_lambda(lambda, name)
  puts 'method start'
  lambda.call name
  puts "method finish"
end

method_with_lambda(my_lambda, 'Joe')


# sample 2 - method return lambda
def build_lambda(text)
  -> {puts text}
end

first = build_lambda("first lambda function")
second = build_lambda("second lambda function")
first.call
second.call


# return in lambda functions
sqrt_or_negative = lambda {|value|
  return value if value.negative?
  Math.sqrt value
}

def function_w_l(number,lambda)
  puts'def starts'
  puts "finish with value #{lambda[number]}" # or lambda.call(number)
end

function_w_l(-3,sqrt_or_negative)
function_w_l(9, sqrt_or_negative)

function_w_l(2, ->(arg){arg**4})


# Proc obj
 square = Proc.new{|x=3| x**2}
 puts square.call(3)
 puts square.(5)
 puts square[-1]
 puts square.call




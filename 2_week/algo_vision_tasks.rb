# task 1

num1 = gets.strip.to_i
num2 = gets.strip.to_i
sum = num1 + num2
sum1 = num1**2 + num2**2
sum2 = sum**2
puts ("Sum: #{sum} sum1: #{sum1} sum2: #{sum2}")



# task 2
a = gets.strip.to_f
b = gets.strip.to_f
c = gets.strip.to_f
perimeter = a + b + c
puts (perimeter)


# task 3
a = gets.strip.to_f
b = gets.strip.to_f
hyputenuse = (a**2 + b**2) ** 0.5
puts (hyputenuse)

# task 4
r = gets.strip.to_f
a = r*2 / 2**0.5
puts (a) 

# task 5
x1 = gets.strip.to_i
y1 = gets.strip.to_i
x2 = gets.strip.to_i
y2 = gets.strip.to_i
x = (x2 + x1) / 2
y = (y2 + y1) / 2
puts ("x: #{x} y: #{y}")


# task 6
a = gets.strip.to_f
b = gets.strip.to_f
alfa = gets.strip.to_f
s = a*b*Math.sin(alfa)/2
puts(s)


# task 7
cost = gets.strip.to_f
count = gets.strip.to_f
salary = cost * count
puts (salary)


# task 8
cost = gets.strip.to_f
period = gets.strip.to_i
total_cost = 365 / period * cost
puts (total_cost)


# task 9
# to boring


# task 10
a = gets.strip.to_f
b = gets.strip.to_f
a = a + b
b = a - b
a = a - b
puts (a)
puts (b)
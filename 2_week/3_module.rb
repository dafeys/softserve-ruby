# arithmetic operators
a = 2
b = 3
add = a + b
sub = a - b
multiply = a * b
div = b / a
mod = b % a
exponenta = a ** b


# string concatination
hello = "Hello"
name = "Joe"
age =  30
message = hello + " " + name + ".You are " + age.to_s + "years old"
puts (message)

asterisk = "*"
new_line = "\n"
five_asterisk = asterisk*5
#puts "The END" + new_line*5 + five_asterisk


# comparison operators
string1 = "ab"
string2 = "Ab"
puts 2 == 3
puts (string1 != string2)
puts (string1 > string2)
#puts (string1 > a)
puts (a <= b)
puts (a <=> b)
p ("string" <=> 3)

bool1 = true
bool2 = false
puts (bool1 == bool2)


# string comparison
puts ("abc" < "abcd") #true
puts ("Abc" < "abc") #true
puts "XXX" < "a"  #true
puts ("two" > "one") #true
puts (" " < "#")  #true


# logical operators
today = 'monday'
is_dayoff = today == 'wednesday' || today == 'sunday'
puts ("day off = " + is_dayoff.to_s) #false

puts (" === && ===")
puts (7 && false) #false
puts (false && 7) #false
puts (7 && "str") #str
puts ("str" && 7) #7
puts ("abc" && "def") #def

puts (" === || ===")
puts (0 || false) #0
puts (false || 7) #7
puts (7 || "str") #7
puts ("str" || 7) #str
puts ("abc" || "def") #abc


# ternary operator
a = 10 > 5?"yes":"no"
puts (a)
10 >= 10 ? puts("yes"):puts("NO")

a = 3
b = 4
max = a > b ? a:b
puts (max)

today = "monday"
day = today == 'saturday' || today == 'sunday' ? 'day off':"weekday"
puts (day)

a = true and false
puts (a)


# sample task 1
puts 'Enter fence width'
width = gets.strip.to_f
puts 'Enter fence length'
length = gets.strip.to_f
fence_length = 2 * (width + length)
puts (fence_length)
puts ("*** END *** \n")


# sample task 2
puts ('Enter electricity count')
count = gets.strip.to_f
tariff = 7.8
price = count * tariff
puts ("Price: #{price}")
puts ('Enter amount of cash')
cash = gets.strip.to_f
rest = cash - price
puts ("Rest: #{rest}")
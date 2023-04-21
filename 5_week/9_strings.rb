#=== escape-symbols
str = "Hello\b\bWorld"  # backspace
puts str

str = "Hello\nWorld"
puts str

str = "Hello\tWorld!"
puts str
puts

str = "Hello\rWorld"  # back to the begin of the line
puts str

p str[3]
p str[5]  # \r is one symbol


p str.split  # arr based on the delimeter
p str.chars  # arr of characters
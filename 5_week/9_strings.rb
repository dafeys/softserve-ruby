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

name = "joe"
p name.capitalize  # first upcased
p name.upcase
p name.downcase
p name.reverse


#=== substring
str = 'abc123'

p str[0, 3]  # abc
p str[3, 3]  # 123

p str[0..-2]  #abc12

str[0..2] = "AB"
p str


#==== incluse?
p str.include?('A')

#==== pad a str
bin_str = '1101'
p bin_str.rjust(8, '0')
p bin_str.ljust(10, '1')
p bin_str

#==== trim str
str = "   hi there   \n"
p str.strip

#==== arr to str
arr = %w[a b c d e f]
p arr.join
p arr.join(' ')


#==== multiline str
str = <<-SOMETHING
text
\ttext
text
SOMETHING

puts str
puts

str = %Q(text
\t text
more text)

puts str


#==== replace text
str = "The night elves are among the oldest known races in Azeroth"

p str.gsub("elves", "orcs")
str.gsub!("Azeroth", "")
p str


#==== remove the Last char
str = "What is your name?"
p str.chomp("?")

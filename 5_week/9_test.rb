str = "Hello World!"
str.downcase()
print(str)
puts

str1 = "World!"
str2 = 'Hello #{str1}'
print(str2)
puts

re = /[A\-Z]/
p re.match?("Some – World")
puts

re = /[A\-Z]/
p re.match?("sdfsd dsfsdf")
puts

re = /A\-Z/
p re.match?("Some - World")
puts

re = /A\-Z/
p re.match?("Some AZ World")
puts

re = /A\-Z/
p re.match?("SomeA-Z World")
puts '---4----'

re = /[A\-Z]/
p re.match?("Some - World")
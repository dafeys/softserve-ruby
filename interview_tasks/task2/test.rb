require_relative('./Classes/Employee')
require_relative('./Classes/Manager')



person1 = Employee.new('Bill', 'Gates', 'oct 28, 1955', 1_000_000)
person2 = Employee.new('Jeff', 'Bezos', 'jan 12, 1964', 500_000)

person3 = Manager.new('Mark', 'Zuckerberg', 'may 14, 1984', 300_000, 10_000)

puts person1
puts person2
puts person3
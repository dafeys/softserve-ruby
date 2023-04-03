d = 1
puts ('d exist') if d

d = false
puts ("d doesn't exist") unless d
role = 'user'
puts ("Access denied") unless role =="admin"

d = 0
puts "var d equal to 0" unless d!=0

a = -5
b = 10
if (a > 0) then puts("a is positive number")
else puts ("a is not positive number")
end

a > 0 ? puts("a is positive number") : puts("a is not positive number")

max = a > b ? a : b
min = a < b ? a : b

puts(max)
puts(min)


action = "run"
case action
when "run" then puts("running...")
when "stay" then puts("staying...")
when "jump" then puts("jumping...")
else puts("Who knows...")
end

print("Enter the month number: ")
month_num = gets.strip.to_i
case month_num
when 1,3,5,7,8,10,12
    puts("Month number #{month_num} has 31 days")
when 4,6,9,11
    puts("Month number #{month_num} has 30 days")
when 2
    ("Month number #{month_num} has 28/29 days")
else
    puts('something wrong!')
end





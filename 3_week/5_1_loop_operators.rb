# times
5.times {|i| puts("i = #{i}")}

3.times do
    puts("new line")
end


# while
num = 1
while num <= 5
    puts(num)
    num +=1
end

char = 'Y'
while char == 'Y' || char == 'y'
  puts 'Enter first integer number'
  number_1 = gets.strip.to_i
  puts 'Enter second integer number'
  number_2 = gets.strip.to_i
  print 'What is result of multuplying ' + number_1.to_s + ' and ' + number_2.to_s + ' ? '
  number_3 = gets.strip.to_i
  if number_1 * number_2 == number_3
    puts 'Correct result'
  else
    puts 'Result is wrong'
  end
  puts 'Enter "Y" if you want to continue'
  char = gets.strip
end

n=0
begin
    print (n)
    n += 1
    end while n<5


# until
n = 3
until n == 0
    puts n
    n -= 1
end

puts

n = 0
begin
    print n; n+=1 end until n ==5


# loop
counter = 0
pass = "my_pass"
acces = false
loop do
  counter +=1
  puts ("Enter your pass")
  acces = gets.strip == pass
  break if acces || counter ==5
end
puts (acces)


# for
for i in 1..3
  puts i
end
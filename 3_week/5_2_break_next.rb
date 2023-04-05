# break samples

while true
    puts ("Print date\\time now?")
    symbol = gets.strip
    if symbol == "y" || symbol == "Y"
        puts("Current time is #{Time.now.to_s}")
    else break
    end
end


loop do
    puts ("Print date\\time now?")
    symbol = gets.strip
    case symbol
    when 'y', 'Y'
        puts("Current time is #{Time.now.to_s}")
    when 'n', 'N'
        break
    else 
        puts ("Y ot N")
    end
end

# next sample

for i in 10..15
    next if i == 13
    sqr = i*i
    puts ("#{i}^2 = #{sqr}")
end

#  mistake with an infinite loop  |   rigt way
#  i = 10                         |   i = 10
#  while i <=15                   |   while i <= 15
#      next if i == 13            |       puts ("#{i}^2 = #{i*i}") if i != 13
#      puts("#{i}^2 = #{i*i}")    |       i += 1
#      i += 1                     |   end
#  end                               
puts

loop do
    puts ('Please enter the num in form of each no 0 (round or zero)')
    num = gets.strip.to_i
    next if num == 0 || num == 6 || num == 8 || num == 9
    puts ("Right, #{num} don't have o")
    puts ('Do you want to play one more time? Y \ N')
    break if gets.strip != 'Y'
end

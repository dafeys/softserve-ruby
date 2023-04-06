# # task 1
# n = gets.strip.to_i
# while (n >= 1)
#     puts(n)
#     n -= 1
# end
# puts('Start')

# # task 2
# a = gets.strip.to_i
# b = gets.strip.to_i
# c = gets.strip.to_i
# puts

# while (a<=b)
#     puts(a) if (a%c == 0)
#     a += 1
# end

# task 3
# b = gets.strip.to_i
# for i in (1..b).step(2)
#     puts i
# end

## task 4
# n = gets.strip.to_i
# f = 1
# for i in (1..n)
#     f *= i
# end
# puts (f)

# # task 5
# n = gets.strip.to_i
# avg = 0
# for i in (1..n)
#     makr = gets.strip.to_i
#     avg += makr
# end
# puts (avg/n)

# # task 7
# n = gets.strip.to_i
# if (n%2 == 0)
#     for i in (0..n).step(2)
#         puts(i)
#     end
# else
#     for i in (1..n).step(2)
#         puts(i)
#     end
# end

# # task 8
# n = gets.strip.to_i
# for i in (1..n)
#     str = "#{n} " + "#"*n
#     puts str
#     n -=1
# end

# # task 9
# n = gets.strip.to_i
# temp = n
# div = 1
# while temp > 10
#     div = div *10
#     temp = temp/10
# end
# while n > 0 
#     puts (n/div)
#     n = n%div
#     div = div / 10
# end

# task 10








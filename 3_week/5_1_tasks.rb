# # task 1
# puts("Введіть ціну цукерок для 1 кг")
# price = gets.strip.to_f
# 5.times do
#     puts("Введіть в кг вагу цукерок, ціну яких Ви хочете дізнатися")
#     count = gets.strip.to_f
#     puts("#{price * count}")
# end


# task 2

# divider = 21
# i = 0

# while (i < 5) do
#     i += 1
#     print("Введіть число, яке буде ділитися на #{divider} : ")
#     num = gets.strip.to_i
#     if (num == 0)
#         puts("Не можна ділити на 0")
#         next
#     end
#     if (num == divider)
#         puts("Число не повинно дорівнювати #{divider}")
#         next
#     end
#     if (num % divider == 0)
#         puts("Чудово")
#         break
#     else
#         puts("Невірно. Спробуйте ще раз")
#     end
#     puts("Кількість спроб завершилася :(") if i == 5
# end


divider = 21
i = 0

while (i < 5) do
    i += 1
    print("Введіть число, яке буде ділитися на #{divider} : ")
    num = gets.strip.to_i
    case
    #when (num == 0)
    #    puts("Не можна ділити на 0")
    #    next
    when (num == divider)
        puts("Число не повинно дорівнювати #{divider}")
        next
    when (num % divider == 0)
        puts("Чудово")
        break
    else
        puts("Невірно. Спробуйте ще раз")
    end
    puts("Кількість спроб завершилася :(") if i == 5
end
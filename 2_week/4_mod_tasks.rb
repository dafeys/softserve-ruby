# tssk 1
def rgb(str)
    case str
    when 'red'
        puts('red')
    when 'blue'
        puts('blue')
    when 'green'
        puts('green')
    else
        puts('i dontkn')
    end
end

rgb('green')


# task 2
def saved_sqrt(a, b)
    if (a * b > 0)
        c = (a*b)**0.5
    else
        c = 0
    end
c end

puts(saved_sqrt(100, 0))

# task 3
def workday(today)
    case today
    when 'пн','вівт','сер','чт','пт'
        puts("#{today} - будній день")
    when 'суб','нед'
        puts("#{today} - вихідний день")
    else 
        puts("#{today} - точно день тижня? Можна вводити тільки значення пн, вівт, сер, чт, пт, суб, нед")
    end
end

workday('суб')

# task 4
def parity() 
    puts("Enter integer number")
    number = gets.strip.to_i
    if (number%2 == 0)
        puts("#{number} is even")
    else
        puts("#{number} is odd")
    end
end
   
parity()
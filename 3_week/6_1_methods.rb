def triangle_square (a=1, b=1, c=1)
    p = (a + b + c) / 2
    Math.sqrt(p*(p-a) * (p-b) * (p-c))
end

puts(triangle_square(3,4,5))
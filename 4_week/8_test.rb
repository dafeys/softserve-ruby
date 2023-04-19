arr1 = arr1 = Array.new(5)
arr1.push(5)



p arr1
p arr1.length
puts


dict = Hash.new(5)
p dict[:a]

dict = {a: 50, b: 60}
dict["b"] = 70
p dict[:b]
p dict

arr1 = (1..5).to_a() * 2
p arr1
puts 

arr1 = [1, 2, 3, 4, 5]
arr2 = [1, 2, 3, 4, 5]
p arr1 > arr2
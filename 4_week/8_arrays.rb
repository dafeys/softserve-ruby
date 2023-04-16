arr = ['BMW', 'Opel', 10, 20]
p arr[0]
arr[4] =34
p arr
arr[10] = 'd'
p arr

p arr.first
p arr.last
p arr.class

p arr.length
p arr.size
p arr.count

# ---- methods of class array ---- #
arr.push(33)  # add an element to the end of array, same as .append
del_element = arr.pop  # deletes the LAST element of the array and returns as result
del_element = arr.shift   # deletes the FIRST element of the array and returns as result
p del_element
p arr

p arr.include?(34)  # return true if for some element
p arr.empty?  # true if the count of elements is zero

p arr.reverse  # new array in reverse order
p arr

# arr.clear  # removes all elements

arr.delete(nil)  # removes elements by value
arr.delete_at(1)  # removes elemets on index

x = arr.index("Opel")  # return index of element by value
p x

# p arr.sort  # new sorted array 

str = "Hello, world!"
arr = str.chars
p arr  # ["H", "e", "l", "l", "o", ",", " ", "w", "o", "r", "l", "d", "!"]

arr = str.split(" ")
p arr


# -------- methods with variable numbers of args ----------------#
def var_args(a, b, c =1, *d, e, f)
  p "a = #{a}"    # "a = 1"
  p "b = #{b}"    # "b = 2"
  p "c = #{c}"    # "c = 3"
  p "*d = #{d}"   # "*d = [4, 5, 6, 7]"
  p "e = #{e}"    # "e = 8"
  p "f = #{f}"    # "f = 9"
end

var_args(1, 2, 3, 4, 5, 6, 7, 8, 9)


# -- -------------------- array iteration -------------------- #
arr = [10, 20, 30, 40, 50]
for i in 0...arr.size do  # use ... not ..
  p arr[i]
end

for element in arr
  p arr[i]
end


arr.each { |i| puts i }


arr.each_with_index {|value, index| p "index: #{index}, value: #{value}"}


p arr.map { |i| i**2 }  # return new array
arr.map! { |i| i**2 }  # ! modify current array

p arr

def calc_avg(*numbers)
  avg = 0.0
  for num in numbers
    avg += num
  end
  avg = avg / numbers.length
end

p calc_avg(3,3,3,5)
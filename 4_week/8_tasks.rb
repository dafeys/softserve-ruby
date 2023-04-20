# task 1 cound the words
sentence = "If the identity of the object is important use a SYMBOL"
p sentence.split.length

def count_words(sentence)
  sentence.split.length
end


# task 2 counting elements
arr = [1, 1, 5, 2, 2, 3, 3, 5, 5]
el = 5

# def count_repetitions(arr, el)
#   count = 0
#   arr.each {|num| count += 1 if num == el }
#   count
# end

# def count_repetitions(arr, el)
#   arr.select{|num| num == el}.length
# end

def count_repetitions(arr, el) 
  arr.count(el)
end

p count_repetitions(arr, el)
puts


# task 3 black advanced problem

matrix = [
  [1, 3, 6],
  [4, 3, 8],
  [3, 0, 7],
]

def matrix_params(arr)
  m = u = o = 0
  arr.each_with_index do |row, row_index|
    row.each_with_index do |el, el_index|
    m += el if row_index == el_index 
    u += el if el_index > row_index
    o += el if el_index < row_index
    end
  end
  {"m" => m, "u" => u, "o" => o}
end

p matrix_params(matrix)


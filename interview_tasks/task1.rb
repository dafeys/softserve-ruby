# Write a method to calculate the number of characters in a sentence

def count_letter(input_string)
  hash = Hash.new(0)
  input_string.chars.each { |char| hash[char] += 1 }
  hash
end


# def count_letter(input_string)
#   hash = {}
#   input_string.chars.each { |char| !hash.key?(char) ? hash[char] = 1 : hash[char] += 1 }
#   hash
# end

str = 'The night elves are among the oldest known races in Azeroth'
#str = ''
p count_letter(str)

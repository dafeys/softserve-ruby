#==== task 1 palindrome?
def palindrome?(str)
  str == str.reverse
end

str = 'asdsaa'

p palindrome?(str)


#==== task 2 removes all vowel letters
def remove_vowels(str)
  re = /[aeoiu]/i
  str.gsub(re, '')
end

str = 'This is a ball'

p remove_vowels(str)
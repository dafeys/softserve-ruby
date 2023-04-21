# metacharacters ( ) [ ] { } . ? + *

str = 'memakrtnakfvjrak'
p str.sub(/ak/, '*') # replace 1 entry of 'ak'
p str.gsub(/ak/, '*') # replace all entries

p str.gsub(/[ak]/, 'X') # replace all entries of 'a' and 'k'
p str

# [0-9] == [0123456789]
# [x-z] == [xyz]

str = 'A0b1c2D3E4f5'
p str.gsub(/[0-9]/, '-') # A-b-c-D-E-f-
p str.gsub(/[A-Z0-9]/, '_') # __b_c_____f_

str = '24/02/2022'
p str.gsub(/\//, '|')

# /c.t/  '.' means any symbol

str = 'A0b1c2D3E4f5'
p str.gsub(/[^0-9]/, '-') # everything except 0-9, !0-9
puts

# \d == [0-9]
# \D == [^0-9]
# \w == [a-zA-Z0-9_]
# \W == [^a-zA-Z0-9_]
# \s == whitespace character: \t \r \n \f \v
# \S == any symbol but \s

# replace 1000...9999
str = 'The 5001 year'
re = /[1-9]\d{3}/
p str.gsub(re, '-')

# begin and end \b
str = 'The 50001 year'
re = /\b[1-9]\d{3}\b/
p str.gsub(re, '-')
puts

# from 100...99999
str1 = "I'm 155 from 50000"
str2 = "I'm 2 from 90000"
re = /\b[1-9][0-9]{2,4}\b/

p str1.gsub(re, '-')
p str2.gsub(re, '-')
puts

# options
str = 'BIG and small LETTERS'
re = /[a-z]/i # /i - ignorecase
re = /%r{[a-z]}/
p str.gsub(re, '-')
puts

#==== The .match
p re.class
p re.match?(str)
p re.match?('34')


#==== =~
p /e/ =~ 'Hello' # 1 - returns index of first match 
p 'Hello' =~ /b/ # nil
puts

# samples

p /W[daeol]rd/.match('Word') #<MatchData "Word">

p "Hello".match(/[[:upper:]]+[[:lower:]]+l{2}o/) #=> #<MatchData "Hello">

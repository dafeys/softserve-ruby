#==== hash sample

dict = {"one" => 1, "two" => 2}
dict = {one: 1, two: 2}

dict1 = Hash.new()
dict2 = Hash.new("name")  # set default value to any key
dict1.default = "empty value"

p dict[:one]


#==== symbols vs str

p "hello".object_id
p "hello".object_id  # new object

p :hello.object_id
p :hello.object_id   # same object


# If the textual content of the object is important, usa a STRING.
# If the identity of the object is important, use a SYMBOL
#                                                   Jim Weirich

#==== some methods
dict = {a: 10, b: 20, c: 30, d: 40}
p dict.length
dict.delete(:a)  # delete by key
p dict
p dict.key?(:b)  # true if hash has this key

dict.delete_if { |key, value| value > 30 }
p dict

dict[:z] = 50
p dict.value?(30)  # true if hash has such value


#==== The .each method
dict.each { |key, value| puts "Key #{key} is #{value}"}


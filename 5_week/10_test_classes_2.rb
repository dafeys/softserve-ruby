# #==== 3 ====
# class Example
#   attr_accessor :color

#   def to_s
#     "color = #{color}"
#   end
# end

# ex = Example.new
# ex.color = ('red')
# puts ex.to_s

# #==== 4 ====
# class Example
#   attr_reader :color

#   def to_s
#     "color = #{color}"
#   end
# end
 
# ex = Example.new
# ex.color = 'red'
# puts ex.to_s

#==== 5 ====
# class Example
#   attr_writer :color
#   #attr_accessor :color

#   def to_s
#     "color = #{color}" # same as self.color, but it's only writeble
#   end
# end
 
# ex = Example.new
# ex.color = 'red'
# puts ex.to_s

# #==== 6 ====
# class Example
#   attr_writer :color

#   def to_s
#     "color = #{@color}"
#   end
# end

# ex = Example.new
# ex.color = 'red'
# puts ex.to_s

#==== 7 ====
# class Example
#   attr_reader :color
 
# end
 
# ex = Example.new
# puts ex.color

#==== 8 ====
class Example
  attr_accessor :color
 
end
 
ex = Example.new
puts ex.instance_variable_get('color')
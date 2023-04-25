#==== task1 ====
# class Pizza
#   @@count = 0

#   def initialize(ingredients)
#     @@count += 1
#     @ingredients = ingredients
#     @number = @@count
#   end

#   def description
#     puts "Піца № #{@number} містить [#{@ingredients.join(',')}]."
#   end
# end

# pizza1 = Pizza.new(['mushroom', 'cheese'])
# pizza2 = Pizza.new(['mushroom', 'cheese', 'cherry'])
# pizza3 = Pizza.new([])

# pizza1.description
# pizza2.description
# pizza3.description

# #==== task2 ====
# class Pizza
#   @@count = 0

#   def initialize(d, ingredients)
#     @d = d
#     if @d == 25 || @d == 50
#       @@count += 1
#       @number = @@count
#       @ingredients = ingredients
#     else
#       @d = 0
#       @number = 0
#       @ingredients = []
#     end
#   end

#   def description
#     "Піца № #{@number} (діагональ = #{@d}) містить [#{@ingredients.join(',')}]."
#   end
# end

# pizza1 = Pizza.new(24, ['mushroom', 'cheese'])
# pizza2 = Pizza.new(25, ['mushroom', 'cheese', 'cherry'])
# puts pizza2.description
# puts pizza1.description

#==== task3 ====
# class Pizza
#   @@count = 0
#   @@fail_count = 0

#   def self.failInstance
#     @@fail_count
#   end

#   def initialize(d, ingredients)
#     @d = d
#     if @d == 25 || @d == 50
#       @@count += 1
#       @number = @@count
#       @ingredients = ingredients
#     else
#       @@fail_count += 1
#       @d = 0
#       @number = 0
#       @ingredients = []
#     end
#   end

#   def description
#     "Піца № #{@number} (діагональ = #{@d}) містить [#{@ingredients.join(',')}]."
#   end
# end

# pizza1 = Pizza.new(24, ['mushroom', 'cheese'])
# pizza2 = Pizza.new(25, ['mushroom', 'cheese', 'cherry'])
# puts pizza2.description
# puts pizza1.description
# puts Pizza.failInstance

#==== task4 ====
class Pizza
  attr_writer :ingredients
  attr_reader :number

  @@count = 0

  def initialize(d)
    @@count += 1
    @number = @@count
    @d = d
    @ingredients = []
  end

  def description
    "Піца № #{@number} (діагональ = #{@d}) містить [#{@ingredients.join(',')}]."
  end
end

pizza1 = Pizza.new(24)
puts pizza1.description

pizza1.ingredients = ['mushroom']
puts pizza1.description

pizza1.ingredients = ['mushroom', 'cheese', 'cherry']
puts pizza1.description

puts pizza1.number

# pizza1.d = 2
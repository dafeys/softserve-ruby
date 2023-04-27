#==== 8
class MyClass
  attr_accessor :field

  def -(other)
    result = MyClass.new
    result.field = @field - other.field
    result
  end

  def to_s
    @field.to_s
  end

end

ref1 = MyClass.new
ref1.field = 15
ref2 = MyClass.new
ref2.field = 30
puts ref1-ref2


#==== 10


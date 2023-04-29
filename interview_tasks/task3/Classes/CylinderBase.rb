# cylinder base class
class Cylinder
  def initialize(radius)
    @radius = radius
  end

  def square
    Math::PI * (@radius ** 2)
  end
end

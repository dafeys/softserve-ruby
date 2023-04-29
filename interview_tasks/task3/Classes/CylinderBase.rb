# cylinder base class
class CylinderBase
  def initialize(radius)
    @radius = radius
  end

  def square
    Math::PI * (@radius ** 2)
  end
end

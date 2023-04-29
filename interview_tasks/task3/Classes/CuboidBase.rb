# Cuboid base class
class CuboidBase
  def initialize(side)
    @side = side
  end

  def square
    @side * @side
  end
end

require_relative('./Classes/C3DFigure')
require_relative('./Classes/CuboidBase')
require_relative('./Classes/CylinderBase')


cylinder = C3DFigure.new(Cylinder, 2, 4)
cuboid = C3DFigure.new(Cuboid, 4, 4)

puts cylinder.volume #=> 314.1592653589793
puts cuboid.volume #=> 64.0


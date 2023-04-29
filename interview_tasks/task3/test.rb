require_relative('./Classes/C3DFigure')

f1 = C3DFigure.new(Cylinder, 5, 4)
f2 = C3DFigure.new(Cuboid, 4, 4)
puts f1.volume
puts f2.volume


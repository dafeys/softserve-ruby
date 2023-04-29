require_relative('./Classes/C3DFigure')


cylinder = C3DFigure.new('cylinder', 2, 5)
cuboid = C3DFigure.new('cuboid', 4, 3)
ball = C3DFigure.new('ball', 4, 5)

puts cuboid.volume #=> 48.0
puts cylinder.volume #=> 62.83185307179586
puts ball.volume #=> Wrong type of figure, the type of figure can be: cylinder, cuboid
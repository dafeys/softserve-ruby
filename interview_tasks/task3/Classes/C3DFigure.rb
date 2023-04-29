require_relative('./CuboidBase')
require_relative('./CylinderBase')

# class of a volumetric figure: cylinder or cuboid
class C3DFigure
  def initialize(type, base, figure_height)
    @base_square = type.new(base).square
    @figure_height = figure_height
  end

  def volume
    @base_square * @figure_height.to_f
  end
end


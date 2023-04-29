require_relative('./CuboidBase')
require_relative('./CylinderBase')

# class of a volumetric figure: cylinder or cuboid
class C3DFigure
  def initialize(type, base, figure_height)
    @type = type
    @base = base
    @figure_height = figure_height
  end

  def volume
    if @type == 'cylinder'
      base = CylinderBase.new(@base)
      base.square * @figure_height.to_f
    elsif @type == 'cuboid'
      base = CuboidBase.new(@base)
      base.square * @figure_height.to_f
    else
      'Wrong type of figure, the type of figure can be: cylinder, cuboid'
    end
  end
end

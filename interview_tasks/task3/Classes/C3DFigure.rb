# class of a volumetric figure: cylinder or cuboid
class C3DFigure
attr_reader :volume

  def initialize(type, base, figure_height)
    @volume = type.new(base).square * figure_height
  end
end

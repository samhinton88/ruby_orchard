# More involved take on the classic orange tree challenge

# Overall stem uses on RootStock, Stem, Branch and Fruit models

# Variety to variety, a root stock profile behaves as a near constant

# the limiting effect of hydraulic capacity of a tree is not yet known to science

require_relative 'scion'
require_relative 'fruit'
require_relative 'rootstock'
require_relative 'data'


class Tree
  attr_reader :varietal_name, :root_stock, :count, :family, :scion, :loc
  @@orchard = []

  def self.orchard(mode = nil)

    return @@orchard if !mode

    """
    #{@@orchard.size} tree#{@@orchard.size == 1 ? '' : 's'} created from this class.
    #{@@orchard.map { |tree| "#{tree.varietal_name} #{tree.family}" }}
    """
  end

  def initialize(root_stock, scion)
    @root_stock     = root_stock
    @loc            = root_stock.loc
    @scion          = scion
    @varietal_name  = scion.fruit_profile[:varietal_name]
    @family         = scion.fruit_profile[:family]
    @age            = 0

    @@orchard.push(self)
  end

  def to_s
    """
    Tree of Variety:  #{varietal_name}
    root_stock:       #{root_stock}
    scion:             #{root_stock.scion}
    """
  end

  def live_day
    @age += 1
    grow

  end

  def node_graph
    root_stock.scion.structure
  end

  def grow
    scion.grow
  end
end





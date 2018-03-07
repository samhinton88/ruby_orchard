# More involved take on the classic orange tree challenge

# Overall stem uses on RootStock, Stem, Branch and Fruit models

# Variety to variety, a root stock profile behaves as a near constant

# the limiting effect of hydraulic capacity of a tree is not yet known to science

require_relative 'scion'
require_relative 'fruit'
require_relative 'rootstock'
require_relative 'data'


class Tree
  attr_reader :varietal_name, :root_stock, :count, :family
  @@orchard = []

  def self.orchard(mode=nil)

    return @@orchard if !mode

    """
    #{@@orchard.size} tree#{@@orchard.size == 1 ? '' : 's'} created from this class.
    #{@@orchard.map { |tree| "#{tree.varietal_name} #{tree.family}" }}
    """
  end

  def initialize(root_stock, loc)
    @loc            = loc
    @root_stock     = root_stock
    @varietal_name  = root_stock.scion.fruit_profile[:varietal_name]
    @family         = root_stock.scion.fruit_profile[:family]
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

  end

  def node_graph
    root_stock.scion.structure
  end
end





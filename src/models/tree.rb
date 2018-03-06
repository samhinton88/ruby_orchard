# More involved take on the classic orange tree challenge

# Overall system uses on RootStock, Stem, Branch and Fruit models

# Variety to variety root stock profile behave as near constants

# the limiting effect of hydraulic capacity of a tree is not yet known to science

ORANGE_TREE_ROOT_STOCK_PROFILE = {
  min_temp: 2,
  drainage: 100,
  ideal_PH: (60..65),
  depth: 1.0,
  spread: 2.0,
  clay_content: (10..40),
}
class Tree
  def initialize(root_stock)
    @root_stock = root_stock
  end
end

class RootStock

  # initialized with a stem
  def initialize(stem, profile)
    @spread_area = 0
    @depth = 0
    @density = 0
    @profile = profile
  end
end

class Stem
  attr_reader :age, :nutrition

  def initialize()

  end

  # “Es ist dafür gesorgt, dass die Bäume nicht in den Himmel wachsen."
  def grow

  end
end



my_orange_tree = Tree.new(RootStock.new(Stem.new(), ORANGE_TREE_ROOT_STOCK_PROFILE))

puts "object: #{my_orange_tree}"
# puts "age: #{my_orange_tree.age}"
# puts "nutrition: #{my_orange_tree.nutrition}"
# puts "requirements: #{my_orange_tree.requirements}"

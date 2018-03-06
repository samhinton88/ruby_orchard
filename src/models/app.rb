require_relative 'tree'

my_scion = Scion.new(Fruit.new(ORANGE_TREE_FRUIT_PROFILE))
my_root_stock = RootStock.new(my_scion, ORANGE_TREE_ROOT_STOCK_PROFILE, SOIL_CONTEXT)
my_orange_tree = Tree.new(my_root_stock)

puts "my_orange_tree: #{my_orange_tree}"
puts "Tree.orchard: #{Tree.orchard}"

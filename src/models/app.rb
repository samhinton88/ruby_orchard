require_relative 'tree'

orange_root_stock = RootStock.new(SOIL_CONTEXT, CLEOPATRA_MANDARIN_ROOT_STOCK_PROFILE)
orange_scion = Scion.new(ORANGE_TREE_FRUIT_PROFILE, orange_root_stock)
orange_orange_tree = Tree.new(orange_root_stock, orange_scion)

apple_root_stock = RootStock.new(SOIL_CONTEXT, CLEOPATRA_MANDARIN_ROOT_STOCK_PROFILE, { x:5, y:5})
apple_scion = Scion.new(APPLE_TREE_FRUIT_PROFILE, apple_root_stock)
apple_apple_tree = Tree.new(apple_root_stock, apple_scion)

orchard = Tree.orchard

puts "Tree.orchard: #{orchard}"
puts "orchard[0]: #{orchard[0]}"
puts "orchard[0] trunk: #{orchard[0].scion.trunk}"
puts "orchard[0] trunk size: #{orchard[0].scion.trunk.size}"
puts "orchard[0] loc: #{orchard[0].loc}"
puts "orchard[1] loc: #{orchard[1].loc}"

tree = orchard[0]
tree.grow
tree

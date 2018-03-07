require_relative 'tree'

orange_scion = Scion.new(ORANGE_TREE_FRUIT_PROFILE)
orange_root_stock = RootStock.new(orange_scion, CLEOPATRA_MANDARIN_ROOT_STOCK_PROFILE, SOIL_CONTEXT)
orange_orange_tree = Tree.new(orange_root_stock, {x: 0, y:0})

apple_scion = Scion.new(APPLE_TREE_FRUIT_PROFILE)
apple_root_stock = RootStock.new(apple_scion, CLEOPATRA_MANDARIN_ROOT_STOCK_PROFILE, SOIL_CONTEXT)
apple_apple_tree = Tree.new(apple_root_stock)

orchard = Tree.orchard

puts "Tree.orchard: #{orchard}"
puts "orchard[0]: #{orchard[0]}"
puts "orchard[0] trunk: #{orchard[0].root_stock.scion.trunk}"
puts "orchard[0] trunk.size: #{orchard[0].root_stock.scion.trunk.size}"

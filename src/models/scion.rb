# the portion of the tree which is above ground
require_relative 'trunk'

class Scion
  attr_reader :age, :nutrition, :fruit_profile, :branch_structure, :trunk, :root_stock

  # initialized with a fruit and a rootstock
  def initialize(fruit_profile, root_stock, trunk = Trunk.new(self))
    @fruit_profile    = fruit_profile
    @height           = 0
    @branch_structure = {}
    @trunk            = trunk
    @rootstock        = root_stock
    @diseases         = []
  end

  # “Es ist dafür gesorgt, dass die Bäume nicht in den Himmel wachsen."
  def grow
    # derive vigour from rootstock
    resource = root_stock.feed_scion

    # derive energy from photosynthesis

    # distribute energy through branch structure


  end
end

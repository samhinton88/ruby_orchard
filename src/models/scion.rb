# the portion of the tree which is above ground
require_relative 'trunk'

class Scion
  attr_reader :age, :nutrition, :fruit_profile, :branch_structure, :trunk, :root_stock, :photo_energy

  # initialized with a fruit and a rootstock
  def initialize(fruit_profile, root_stock, trunk = Trunk.new(self))
    puts root_stock
    @fruit_profile    = fruit_profile
    @height           = 0
    @branch_structure = {}
    @trunk            = trunk
    @root_stock        = root_stock
    @diseases         = []
    @photo_energy     = 100
  end

  # “Es ist dafür gesorgt, dass die Bäume nicht in den Himmel wachsen."
  def grow
    puts self
    puts "root_stock in grow method on Scion: #{root_stock}"
    # derive vigour from rootstock
    feed_object = root_stock.feed_scion

    # derive energy from photosynthesis
    photo_energy
    # distribute energy through branch structure

    trunk.distribute(feed_object, photo_energy)
  end
end

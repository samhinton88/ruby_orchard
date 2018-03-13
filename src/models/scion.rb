# the portion of the tree which is above ground
require_relative 'trunk'
require_relative 'node'

class Scion
  attr_reader :age, :nutrition, :fruit_profile, :branch_structure, :trunk, :root_stock, :photo_energy

  # initialized with a fruit and a rootstock
  def initialize(fruit_profile, root_stock, trunk = nil)
    @root_stock       = root_stock
    @fruit_profile    = fruit_profile
    @trunk            = trunk ? trunk : Trunk.new(Node.new(root_stock.loc), self)
    self.trunk.parent = self
    @height           = 0
    @branch_structure = {}
    @diseases         = []
    @photo_energy     = 100
  end

  # “Es ist dafür gesorgt, dass die Bäume nicht in den Himmel wachsen."
  def grow
    puts self
    puts "root_stock in grow method on Scion: #{root_stock}"
    # derive vigour from rootstock
    feed_object = root_stock.feed_scion
    puts "inside Scion grow with feed_object #{feed_object}"
    # derive energy from photosynthesis
    photo_energy
    # distribute energy through branch structure
    puts "trunk in scion #{self}: #{trunk ? trunk : 'no trunk initialized'}"
    trunk.distribute(feed_object, photo_energy)
  end
end

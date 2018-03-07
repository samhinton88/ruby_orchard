# the portion of the tree which is above ground
require_relative 'trunk'

class Scion
  attr_reader :age, :nutrition, :fruit_profile, :branch_structure, :trunk

  # initialized with a fruit and a rootstock
  def initialize(fruit_profile, rootstock, trunk = Trunk.new(self))
    @fruit_profile    = fruit_profile
    @height           = 0
    @branch_structure = {}
    @trunk            = trunk
    @rootstock        = rootstock
  end

  # “Es ist dafür gesorgt, dass die Bäume nicht in den Himmel wachsen."
  def grow
    # derive vigour from rootstock

    # distribute vigour through branch structure


  end
end

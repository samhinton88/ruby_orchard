# the portion of the tree which is above ground
require_relative 'trunk'

class Scion
  attr_reader :age, :nutrition, :fruit_profile, :branch_structure, :trunk

  # initialized with a fruit
  def initialize(fruit_profile, trunk = Trunk.new(self))
    @fruit_profile    = fruit_profile
    @height           = 0
    @branch_structure = {}
    @trunk            = trunk
  end

  # “Es ist dafür gesorgt, dass die Bäume nicht in den Himmel wachsen."
  def grow

  end
end

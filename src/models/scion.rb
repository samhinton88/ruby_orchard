# the portion of the tree which is above ground

class Scion
  attr_reader :age, :nutrition, :fruit_profile

  # initialized with a fruit
  def initialize(fruit_profile)
    @fruit_profile    = fruit_profile
    @height           = 0
    @branch_structure = {}
  end

  # “Es ist dafür gesorgt, dass die Bäume nicht in den Himmel wachsen."
  def grow

  end
end

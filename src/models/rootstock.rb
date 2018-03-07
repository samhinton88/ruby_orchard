# in effect the engine room of the tree

class RootStock
  attr_reader :scion

  # initialized with a scion
  def initialize(scion, soil_context, profile = {})
    @spread_area  = 0
    @depth        = 0
    @density      = 0
    @profile      = profile
    @scion        = scion
  end

  def grow

  end
end

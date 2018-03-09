# in effect the engine room of the tree

class RootStock
  attr_reader :scion, :loc

  # initialized with a scion
  def initialize(soil_context, profile = {}, loc = { x: 0, y: 0 })
    @loc          = loc
    @spread_area  = 0
    @depth        = 0
    @density      = 0
    @profile      = profile
    @scion        = scion
  end

  def grow

  end

  def feed_scion

  end
end

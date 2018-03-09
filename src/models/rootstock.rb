# in effect the engine room of the tree

class RootStock
  attr_reader :scion, :loc, :depth, :density, :spread_area, :soil_context

  # initialized with a scion
  def initialize(soil_context, profile = {}, loc = { x: 0, y: 0 })
    # puts profile
    @loc          = loc
    @spread_area  = profile['spread'] || 0
    @depth        = profile['depth '] || 0
    @density      = profile['density'] || 0
    @profile      = profile
    @scion        = scion
    @soil_context = soil_context
  end

  def grow

  end

  def feed_scion
    vigour = spread_area * depth * density * soil_context[:magnesium]
    { vigour: vigour }
  end
end


# CLEOPATRA_MANDARIN_ROOT_STOCK_PROFILE = {
#   min_temp: 2,
#   drought_resistence: 100,
#   propensity_for_pests: 0,
#   ideal_PH: (60..65),
#   depth: 1.0,
#   spread: 2.0,
#   ideal_clay_content: (10..40),
#   disease_resistance: 100,
#   density: 1.0
# }

# SOIL_CONTEXT = {
#   PH: 60,
#   nitrogen: 5,
#   magnesium: 5,
#   water: 100
# }

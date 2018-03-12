class GrowthPoint
  attr_accessor :loc

  def initialize(origin_node)
    @loc = {
      x: origin_node[:x],
      y: origin_node[:y],
      z: origin_node[:z]
    }
  end

  def update(new_loc)
    self.loc = new_loc
  end
end

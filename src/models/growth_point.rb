class GrowthPoint
  attr_accessor :loc

  def initialize(origin_node)
    @loc = {
      x: origin_node.x,
      y: origin_node.y,
      z: origin_node.z
    }
  end

  def to_s
    "growth point at #{loc}"
  end

  def repositon(given_loc)
    given_loc.keys.each { |axis| self.loc[axis.to_sym] += given_loc[axis.to_sym] }
  end
end

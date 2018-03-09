# model tree branch
# if @parent === Trunk
class Stem
  attr_reader :length, :diameter

  def initialize
    @length     = 1
    @diameter   = 1
  end
end

class Branch
  attr_reader :parent, :scion, :nodes, :length, :strength

  def initialize(parent, origin_node)
    @parent   = parent
    @scion    = parent.scion
    @nodes    = [origin_node]
    @length   = 1
    @strength = 1
  end

  def grow(feed_object)
    e = feed_object.energy
    v = feed_object.vigour
    length += e
    strength += v
  end
end

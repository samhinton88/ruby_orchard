class Node

  """Point at which branches are connected"""

  attr_reader :x, :y, :z
  @@graph = []

  def initialize(loc)
    puts "initialize node with loc #{loc}"
    @x = loc[:x]
    @y = loc[:y]
    @z = loc[:z]
    @@graph.push(self)
  end

  def to_s
    """node at x:#{x} y:#{y} z:#{z}"""
  end
end

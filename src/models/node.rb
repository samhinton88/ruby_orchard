class Node
  """Point at which branches are connected"""
  @@graph = []

  def initialize(loc)
    @x = loc['x']
    @y = loc['y']
    @z = loc['z']
    @@graph.push(self)
  end
end

# model tree branch
# if @parent === Trunk

class Branch
  attr_reader :parent, :scion, :nodes

  def initialize(parent, origin_node)
    @parent   = parent
    @scion    = parent.scion
    @nodes    = [origin_node]
  end
end

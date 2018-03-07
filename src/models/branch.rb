# model tree branch
# if @parent === Trunk

class Branch
  attr_reader :parent, :scion, :nodes

  def initialize(parent)
    @parent   = parent
    @scion    = parent.scion
    @nodes    = []
  end
end

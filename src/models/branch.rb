# model tree branch
# if @parent === Trunk

class Branch
  attr_reader :parent, :scion

  def initialize(parent)
    @parent   = parent
    @scion    = parent.scion
  end
end

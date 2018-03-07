# https://www.reddit.com/r/askscience/comments/1518gx/what_determines_whenwhere_a_branch_will_grow_on_a/
# apical meristem

class Trunk
  attr_reader :scion, :size

  def initialize(scion, size = 1)
    @scion = scion
    @size  = size

  end


  private
  def grow

  end

  def will_branch?
    # presence of secondary meristem and its distance from the apical meristem

  end
end

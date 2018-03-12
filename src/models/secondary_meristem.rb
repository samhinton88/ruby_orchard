class SecondaryMeristem
  attr_reader :x, :y, :z

  def initialize(loc)
    @x = loc[:x]
    @y = loc[:y]
    @z = loc[:z]
  end
end

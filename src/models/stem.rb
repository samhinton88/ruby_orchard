class Stem
  attr_reader :length, :diameter, :children

  def initialize(parent)
    @length     = 1
    @diameter   = 1
    @children   = []
    @parent     = parent
  end

  def distribute(feed_object, photo_energy)
    puts "Inside #{self}, with feed feed_object #{feed_object} and photo_energy #{photo_energy}"

    children.each { |child| child.distribute(feed_object, photo_energy) }
  end
end

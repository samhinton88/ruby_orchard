# https://www.reddit.com/r/askscience/comments/1518gx/what_determines_whenwhere_a_branch_will_grow_on_a/
# apical meristem
require_relative 'stem'

class Trunk < Stem
  attr_reader :scion, :size

  def initialize(scion)
    super
    @scion = scion
  end

  # def distribute(feed_object, photo_energy)
  #   puts feed_object, photo_energy
  # end

  private

end

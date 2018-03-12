# https://www.reddit.com/r/askscience/comments/1518gx/what_determines_whenwhere_a_branch_will_grow_on_a/
# apical meristem
require_relative 'stem'
require_relative 'apical_meristem'
require_relative 'node'

class Trunk < Stem
  attr_reader :growth_point

  def initialize(parent, origin_node)
    super(parent, origin_node)
    puts "initialize trunk from parent: #{parent} with origin_node #{origin_node}"
    @growth_point = ApicalMeristem.new()
  end


end

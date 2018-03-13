require_relative 'growth_point'
require_relative 'secondary_meristem'

class Stem
  attr_accessor :length, :diameter, :children, :parent, :vector

  def initialize(parent, origin_node, vector = { x: 0, y: 0, z: 1 })
    @length               = 1
    @diameter             = 1
    @vector               = vector
    @growth_point         = GrowthPoint.new(origin_node)
    @children             = []
    @secondary_meristems  = []
    @parent               = parent
    @origin_node          = origin_node
  end

  def distribute(feed_object, photo_energy)
    # distribute organic resources throughout stem and its children
    growth = ((feed_object[:vigour] * photo_energy))
    self.length += growth
    displacement = {}
    vector.keys.each { |axis| displacement[axis.to_sym] = vector[axis.to_sym] * growth }
    self.growth_point.repositon(displacement)
    children.each { |child| child.distribute(feed_object, photo_energy) }
  end

  def create_secondary_meristem
    # create growth stub once primary growth point is at a sufficient distance
    z = origin_node.z + Random.rand(growth_point.z)
    loc = find_point(z)
    self.secondary_meristems.push(SecondaryMeristem.new(loc))
  end

  def describe(storage = [])
    # return nodes and nodes of children recursively
    storage.push({
      object: self,
      origin: self.origin_node,
      terminus: self.growth_point
    })

    children.each {|child| child.describe(storage) }
    storage
  end

  private
  # given z coordinate and vector, return point in 3D space along path
  # ((x - xi) / l) = ((y - yi) / m) = ((z - zi) / n)
  def find_point(arg_z)
    vx = vector[:x]
    vy = vector[:y]
    vz = vector[:z]

    ox = origin_node.x
    oy = origin_node.y
    oz = origin_node.z

    if (vx == 0 && vy == 0 )
      return { x: 0, y: 0, z: arg_z }
    end

    if (vx == 0)
      # to do
    end

    y = ((((arg_z - oz) / vz) * vy)) + oy
    x = ((((arg_z - oz) / vz) * vx)) + ox

    return { x: x, y: y, z: arg_z }
  end
end


# d = (l, m, n)

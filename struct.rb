# class Point
#   attr_accessor :x
#   attr_accessor :y
#
#   def initialize(x=nil,y=nil)
#     @x = x
#     @y = y
#   end
# end


point = Struct.new(:x, :y)
point.class
point.name
Point = point
Location = Point

p = Point.new(4,5)
p p.x
p p.y

p p[:x]
p p["y"]

p p.members
p p.each_pair do |name, value|
  puts "#{name} : #{value}"
end

p p.max
p p.reduce(&:+)

# Point = Struct.new(:x, :y) do
#   def to_s
#     "(#{x}x#{y})"
#   end
# end
# Point.new(3,5).to_s             # => "(3x5)"

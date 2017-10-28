class Point
  def self.my_new(*args, &block)
    instance = allocate
    instance.my_initialize(*args, &block)
    instance
  end

  def my_initialize(x,y)
    @x = x
    @y = y
  end

end

class SnowFlake
  class << self
    private :new
  end
  def self.instance
    @instance ||= new
  end
end

# Also how singleton works

require 'singleton'

class TheOne
  include Singleton
end

class RpsMove
  def self.new(move)
    @cache ||= {}
    @cache[move] ||=super(move)
  end
  def initialize(move)
    @move = move
  end
end


p RpsMove.new(:rock)
p RpsMove.new(:rock)

p = Point.my_new(3,5)
p p

p SnowFlake.instance
p SnowFlake.instance
# SnowFlake.new  => `<main>': private method `new' called for SnowFlake:Class (NoMethodError)
p TheOne.instance
p TheOne.instance
# TheOne.new  => <main>': private method `new' called for TheOne:Class (NoMethodError)

# require "thread"
#
# class Scores
#
#   def initialize
#     @scores = {}
#     @lock = Mutex.new
#   end
#
#   def update(turtle, score)
#     @lock.synchronize do
#       @scores[turtle] = score
#     end
#   end
#
#   def for_turtle(turtle)
#     @lock.synchronize do
#       @scores[turtle]
#     end
#   end
#
#   def for_all(*turtles)
#     @lock.synchronize do
#       turtles.map { |t| for_turtle(t) }
#     end
#   end
# end
#
# scores = Scores.new
# scores.update("yertle", 23)
# scores.update("mack", 15)
# scores.for_turtle("mack")
# scores.for_all("mack", "yertle")
require "monitor"

class Scores
  include MonitorMixin

  def initialize
    super
    @scores = {}
  end

  def update(turtle, score)
    synchronize do
      @scores[turtle] = score
    end
  end

  def for_turtle(turtle)
    synchronize do
      @scores[turtle]
    end
  end

  def for_all(*turtles)
    synchronize do
      turtles.map do |p|
        for_turtle(p)
      end
    end
  end
end

scores = Scores.new
scores.update("yertle", 23)
scores.update("mack", 15)
p scores.for_turtle("mack")              # => 15
p scores.for_all("yertle", "mack")

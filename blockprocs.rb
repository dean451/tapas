greeter = proc do |name|
  puts "hello, #{name}"
end

greeter_l = -> (name) {
  puts "hello, #{name}"
}


greeter.call "dean"
greeter["deaner"]
greeter.("deany")
p greeter_l


# def each_child(visitor)
#   visitor.call('dean')
#   visitor.call('brean')
#   visitor.call('frean')
#   visitor.call('clean')
#   visitor.call('mean')
# end
#
# each_child(->(name) { puts "hello, #{name}!"})

# THE SAME AS

def each_child
  yield "lily"
  yield 'josh'
  yield 'evan'
end

each_child do |name|
  puts "hello, #{name}!"
end

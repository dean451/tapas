a1 = [:first, :second, :third, :fourth]
a2 = [:before, a1, :after]

p a2.flatten

# Destructuring
a2 = [:before, *a1, :after]
p a2

# x, y, z = 1, 2, 3
# p x
# p y
# p z

x, y, z = *a1
p x
p y
p z

def sum3(x, y, z)
  x + y + z
end
triangle = [90, 60, 30]
p sum3(*triangle)

def greet(greeting, *names)
  names.each do |name|
    puts "#{greeting}, #{name}"
  end
end

p greet("Good morning", "Grumpy", "Sneezy", "Dopey", "Mopey", "Daffy")

def random_draw(num_times, num_draws)
  num_times.times do
    draws = num_draws.times.map { rand(10) }
    yield(*draws)
  end
end

random_draw(5, 3) do |first, *rest|
  puts "#{first}; #{rest.inspect}"
end

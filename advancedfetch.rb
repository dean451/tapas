a = [:x, :y, :z]

a.fetch(3)

{}.fetch(:foo) do |key|
  puts "Missing key: #{key}"
end
# >> Missing key: foo

default = ->(key) do
  puts "#{key} not found, please enter it: "
  gets
end

h = {}
name = h.fetch(:name, &default)
email = h.fetch(:email, &default)


def default
  42 # the ultimate answer
end

answers = {}
answers.fetch("How many roads must a man walk down?", default)
# => 42

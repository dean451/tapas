require "active_support/core_ext/enumerable"

data = [1,2,3,4,5,6,7,8,9,10]
p sum = data.reduce(0, :+)

# p data.sum

# p data.inject(:+)

# p sum = data.reduce(:+)

p sum = data.reduce(0) { |accumulator, n|
  p [accumulator, n]
  accumulator + n
}

add = :+.to_proc
p add
p add.call(2,2)
p myadd = ->(a,b) { a.public_send(:+, b) }
p myadd.call(2,2)

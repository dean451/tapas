require "SecureRandom"

p generator = 3.times

p generator.next

p generator.next

p generator.map { |i| i ** 2  }

p generator.map { :whatever }

p (1..3).map { :whatever }

p Array.new

p Array.new(3) {|i| i ** 2 }

p Array.new(3) { :whatever }

codes = Array.new(20) { SecureRandom.hex(8) }

p codes

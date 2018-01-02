for n in (1..3).each {|n| puts n}
end

puts "ending value of n: #{n}"

def countdown_from(n)
  n.downto(1).each do |n|
    puts n
  end
  puts "I counted down from #{n}"
end

puts

countdown_from(4)

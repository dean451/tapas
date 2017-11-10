require "mathn"

cards = ["Jack", "Queen", "King", "Ace", "Joker"]
cards
total = 0
cards.reverse_each {|c| puts "#{c.upcase} - #{c.length} - #{total}" }

Prime.each { |p| puts "the next prime is #{p}"}

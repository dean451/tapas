cards = ["Jack", "Queen", "King", "Ace", "Joker"]
cards.shuffle!

cards.each {|c| puts "#{c.upcase} - #{c.length}" }

# def deal
#   faces = ["Jack", "Queen", "King", "Ace"]
#   suits = ["Hearts", "Diamonds", "Spades", "Clubs"]
#   random_face = faces.sample
#   random_suit = suits.sample
#   yield random_face, random_suit
# end
#
# deal do |face, suit|
#  puts "dealt a #{face} of #{suit}"
#  face.length + suit.length
# end
#
# puts deal

class Integer
  def times
    i = 0
    while i < self
      puts "yielding #{i}..."
      yield i
      i += 1
    end
  end
end

12.times { |n| puts "#{n} echo!"}

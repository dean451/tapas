require 'nokogiri'

# an assortment of objects. Even @tenderlove uses puts to debug!

str   = "<p>Hello, world</p>"
html  = Nokogiri::HTML.fragment('<p>Hello, world</p>')
blank = ""
a_nil = nil
sym   = :foo
arr   = [:foo, :bar, :baz]

puts "hello"
p "hello"

# palindromes = ["racecar", "banana", "never odd or even"].select{|phrase|
#   puts(phrase.reverse) == phrase
# }

palindromes = ["racecar", "banana", "never odd or even"].select{|phrase|
  p(phrase.reverse) == phrase
}

puts "Results #{palindromes}"


# p str, html, blank, a_nil, sym, arr
# p str
# p html
# p blank
# p nil
# p sym
# p arr


/\A\d+\z/ === "54321" # => true
(0..10) === 5         # => true
Numeric === 123       # => true

even = ->(x){ (x % 2) == 0 }
p even.call 2
p even.call 3

p even === 2


require 'net/http'

SUCCESS = ->(response) { (200..299) === response.code.to_i }
CLIENT_ERROR = ->(response) { (400..499) === response.code.to_i }

response = Net::HTTP.get_response(URI.parse("http://www.google.com"))
case response
when SUCCESS then puts "Success!"
when CLIENT_ERROR then puts "Client error."
else puts "Other"
end

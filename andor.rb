p nil || 42

p 42 && 23

p nil or 42

user = Struct.new(:name).new("Avdi")
user_name = user && user.name
p user_name                       # => "Avdi"
user_name = user and user.name
p user_name                       # => #<struct name="Avdi">

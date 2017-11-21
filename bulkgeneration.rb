require "securerandom"

p SecureRandom.hex(8)

# codes = []
#
# 200.times do
#   codes << SecureRandom.hex(8)
# end
#
# p codes

codes = 200.times.collect { SecureRandom.hex(8) }

p codes

# It's a little thing, but I think minding the little things is one of the ways we keep our code clean.
#
# Happy hacking!

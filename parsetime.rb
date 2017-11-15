# require "time"
# p Time.parse('apr 28, 2013, 9:00')
require "date"
p DateTime.strptime('4/28/2013 9:00', '%m/%d/%Y %k:%M')




time = Chronic.parse('4/28/2013 9:00')
p time # => 2013-04-28 09:00:00 -0400

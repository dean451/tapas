# def run_my_block
#   puts "starting method..."
#   yield
#   puts "back in method."
# end
#
# run_my_block do
#   puts "the time is now #{Time.now}"
# end
def roll
  puts "starting method..."
  number = rand(1..6)

  yield "larry", number
  yield "moe", number
  result = yield "curly", number

  puts "the block returned #{result}"
end

roll do |name, number|
  puts "#{name} rolled a #{number}"
  number * 2
  "hello"
end

#
#
# def run_my_block
#   puts "starting method"
#   yield
#   puts "back in method"
# end
#
# run_my_block do
#   puts "the time is now #{Time.now}"
# end
def roll
  puts "starting method"
  number1 = rand(1..6)
  number2 = rand(1..6)
  yield "larry", number1
  yield 'moe', number2
  puts "back in method"

end

roll do |name, number|
  puts "#{name} rolled a #{number}"
end

def three_times
  1.upto(3) do |count|
    yield(count)
  end
end

three_times do
    puts "ho!"
end

puts three_times

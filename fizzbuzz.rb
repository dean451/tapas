1.upto(100) do |i|
  if i % 3 == 0 && i % 5 == 0
    puts 'Fizzbuzz'
  elsif i % 3 == 0
    puts 'Fizz'
  elsif i % 5 == 0
    puts 'Buzz'
  else
    puts i
  end
end

# 1.upto(100) do |i|
#   fizz = (i % 3 == 0)
#   buzz = (i % 5 == 0)
#   puts case
#        when fizz && buzz then 'FizzBuzz'
#        when fizz then 'Fizz'
#        when buzz then 'Buzz'
#        else i
#        end
# end

i = 0
while true
  puts "iteration #{i}"
  break if i >= 2
  i +=1
end

# break is not just for loops and iteration. It can force an early
# return from any method that yields.
# And while break terminates the execution of a method, it still
# respects ensure blocks.

def names
  yield "ylva"
  yield "brighid"
  yield "shifra"
  yield "yesamin"
ensure
  puts "grim"
end

names do |name|
  puts name
  break if name =~ /^S/
end

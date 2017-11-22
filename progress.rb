require "ruby-progressbar"
require "thread"
require "hitimes"
require "ruby-progressbar"

duration = ARGV[0].to_f
seconds  = ARGV[1].to_f

repeat = (seconds / duration).to_i
samples = []
total_duration = 0.0
progress = ProgressBar.create(total: repeat)
repeat.times do
  actual_duration = Hitimes::Interval.measure do
    sleep duration
  end
  samples << actual_duration
  total_duration += actual_duration
  progress.increment
end

min = samples.min
max = samples.max
sum = samples.reduce(:+)
avg = sum / samples.size
sorted = samples.sort
half_size = sorted.size / 2
q, r = sorted.size.divmod(2)
middle = sorted[q - 1 + r, 2 - r]
med = middle.reduce(:+) / middle.size
std = Math.sqrt(samples.map{|n| (n - avg) ** 2}.reduce(:+) / samples.size)

puts "Sleep duration: #{duration}"
puts "Repeat: #{repeat}"
puts "Ideal length: #{duration * repeat} seconds"
puts "Actual length: #{total_duration} seconds"
puts "Samples: #{samples.size}"
puts "Min: #{samples.min}"
puts "Max: #{samples.max}"
puts "Avg: #{avg}"
puts "Median: #{med}"
puts "Std dev: #{std}"

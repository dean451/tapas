shopping_list = ["bread", "milk", "cheese"]
shopping_list += ["granola", "brie", "cheddar"]
shopping_list.flatten!
p shopping_list

require 'benchmark'

Benchmark.bm do |bm|
  bm.report("<<+flatten:  ") do
    list = ["bread", "milk", "granola"]
    1000.times do
      list << ["swiss", "brie", "cheddar"]
      list.flatten!
    end
  end
  bm.report("+=:          ") do
    list = ["bread", "milk", "granola"]
    1000.times do
      list += ["swiss", "brie", "cheddar"]
    end
  end
  bm.report("#concat:     ") do
    list = ["bread", "milk", "granola"]
    1000.times do
      list.concat(["swiss", "brie", "cheddar"])
    end
  end
end

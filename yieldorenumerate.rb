require "pp"


sums = [0,1,2,3,4,5,6,7,8,9].each_slice(2).map do |slice|
  slice.reduce(:+)
end

p sums


def names
  return to_enum(__callee__) unless block_given?
  yield "dean"
  yield "craig"
  yield "jon"
  yield "mike"
end
p names.to_a

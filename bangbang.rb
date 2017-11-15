# p 42.to_s
# p :foo.to_s
# p [1,2,3].to_s
#
# p (1..3).to_a
# p "42".to_i
p("---------------------------------------------------")
values = [!!true, !false, !nil, !0, !1, !!"false", "", 3.14159]

print
values.each do |value|
  if value
    puts "#{value.inspect} is truthy"
  else
    puts "#{value.inspect} is falsy"
  end
end

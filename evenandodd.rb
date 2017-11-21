bucket_a = []
bucket_b = []

[:thing1, :thing2, :thing3, :thing4].each_with_index do |thing, i|
  if i.even?
    bucket_a << thing
  else
    bucket_b << thing
  end
end

p bucket_a
p bucket_b

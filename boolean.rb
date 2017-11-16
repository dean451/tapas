p true.methods.count
p false.methods.count

p (true.methods & false.methods).count
p ((true.methods & false.methods) - Object.instance_methods).count

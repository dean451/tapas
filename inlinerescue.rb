def user_name(params)
  "#{params.fetch(:fname)} #{params.fetch(:lname)}"
end

def greet(params)
  name = user_name(params) rescue "Anonymous"
  puts "Hello, #{name}"
end

greet({fname: "jane", lname: "doe"})

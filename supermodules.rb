
module YeOlde
  def hello(subject="World")
    if defined?(super)
      puts super
    else
      puts "Good morrow, #{subject}!"
    end
    puts "Well met indeed!"
  end
end

class Greeter
  def hello(subject)
    puts "hello, #{subject}"
  end
end

class GreeterChild < Greeter
  include YeOlde
end

class NonGreeter
  include YeOlde
end

p GreeterChild.new.hello("bob")
p NonGreeter.new.hello("sally")

module Logged
  def logged_send(name, *args, &block)
    puts "Sending #{name}(#{args.map(&:inspect).join(', ')})"
    original_send = Object.instance_method(:send)
    bound_send = original_send.bind(self)
    bound_send.call(name, *args, &block)
  end
end

class Parent
  def hello(subject="World")
    puts "hello, #{subject}"
  end

end

class Child < Parent
  def hello(subject)
    super
    puts "how are you today?"

  end

end

Child.new.hello("Bob")

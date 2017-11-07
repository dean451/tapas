class C
  def self.foo
    puts "who needs instances, i'm a class method!"
  end

  puts "hello from #{self}"

  def C.bar
    puts "i'm a class method too!"
  end

  class << self
    def baz
      puts "just another class method"
    end
  end

end

C.foo

C.bar

C.baz

s = "Bob"

def s.greet
  puts "Hi, i'm #{self}"
end

s.greet

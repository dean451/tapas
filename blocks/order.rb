class Order
  attr_reader :email, :total

  def initialize(email, total)
    @email = email
    @total = total
  end

  def to_s
    "#{email}: $#{total}"
  end

end

orders = []

1.upto(5) { |n| orders << Order.new("customer#{n}@example.com", n * 10)}

puts "newsletter emails:"

orders.each { |o| p o.email }

sum = 0
orders.each { |o| sum+= o.total }
p "total sales: $#{sum}"

taxes = {"CO" => 0.02, "MT" => 0.00, "AZ" => 0.04}
taxes.each do |key, value|
  puts "#{key}: #{value * 100}%"
end

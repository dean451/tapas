# select, reject, detect
# p (1..10).partition {|v| v.even? }

class Order
  attr_reader :email, :total, :state, :status

  def initialize(email, state, total, status=:pending)
    @email = email
    @total = total
    @state = state
    @status = status
  end

  def tax
    total * TAX_TABLE[state]
  end

  def to_s
    "#{email} (#{state}): $#{total} - #{status}"
  end

end
TAX_TABLE = {"CO" => 0.02, "MT" => 0.00, "AZ" => 0.04}
orders = []

orders << Order.new("customer1@example.com", "MT", 300)
orders << Order.new("customer2@example.com", "AZ", 400, :completed)
orders << Order.new("customer3@example.com", "CO", 200)
orders << Order.new("customer4@example.com", "CO", 100, :completed)

# puts orders.any? {|o| o.status == :pending}
# order = orders.detect { |o| o.status == :pending}
# puts order
# puts orders.any? {|o| o.status == :completed}
big_orders, small_orders = orders.partition { |o| o.total >= 300  }
pending_orders, completed_orders = orders.partition { |o| o.status == :pending }

puts "newsletter emails:"
emails = orders.map { |o| o.email.downcase }
p emails
puts ("--------------------------------------------")
puts "pending:"
puts pending_orders
puts ("--------------------------------------------")
puts "completed:"
puts completed_orders
puts ("--------------------------------------------")
puts "big orders:"
puts big_orders
puts ("--------------------------------------------")
puts "small orders:"
puts small_orders
puts ("--------------------------------------------")

puts "Taxes:"
co_taxes = orders.select { |o| o.state == "CO" }.map {|o| o.tax }

p co_taxes

sum = orders.reduce(0) {|sum, order| sum + order.total }
puts "Total sales: $#{sum}"

# total_tax = orders.reduce(0) { |total, order| total + order.tax }
total_tax = orders.map {|o| o.tax}.reduce(:+)
puts "Total tax: $#{total_tax}"

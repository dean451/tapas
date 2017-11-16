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

# total_tax = orders.map {|o| o.tax}.reduce(:+)
total_tax = orders.map {|o| o.tax}.inject(:+)


pending_orders = orders.select{ |o| o.status == :pending }
completed_orders = orders.find_all {|o| o.status == :completed}

puts pending_orders
puts ("---------------------------------------------------")
puts completed_orders
puts ("---------------------------------------------------")
puts "Total tax: $#{total_tax}"

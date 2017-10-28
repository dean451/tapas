@names = %w[dean manon colin craig]

def names
  yield @names.shift
  yield @names.shift
  yield @names.shift
  yield @names.shift
end

# names do |name|
#   puts name
# end
enum = to_enum(:names)
enum.next
@names
enum.next
@names
enum.next
enum.next
@names

enum.with_index do |name, index|
  puts "#{index}: #{name}"

end

require "ostruct"
user = OpenStruct.new(:qualifies_for_free_sandwich? => true)

def receipt_message(user)
  message = if user.qualifies_for_free_sandwich?
    "Congratulations, you qualify for a free sandwich!"
  else
    "Come again soon!"
  end
  if rand(10) == 0
    message << "\nBring this receipt back for a 10% discount!"
  end
  message
end
puts receipt_message(user)

def slugify(title)
  title
  .strip
  .tr_s('^A-Za-z0-9', '-')
  .downcase
end
#
puts slugify("'Twas brillig, and the slithy toves...'")

shopping_list = [
  :apple,
  :orange,
  :banana
]

puts shopping_list

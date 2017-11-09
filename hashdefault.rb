
word_count = Hash.new do |hash, missing_key|
  hash[missing_key] = 0
end
text = <<END
I'm your only friend
I'm not your only friend
But I'm a little glowing friend
But really I'm not actually your friend
But I am
END

text.split.map(&:downcase).each do |word|
  word_count[word] += 1
end
p word_count

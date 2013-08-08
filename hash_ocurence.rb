def hash_occurence(text)
  hash = Hash.new(0)
  text.each_char { |letter| hash[letter]+=1  if letter=~ /[a-z]/ }
  hash
end
puts "enter the string in which you want to find occurence"
text = gets
puts hash_occurence(text.downcase)

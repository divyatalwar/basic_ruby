require_relative "../lib/string"
puts "Enter the string"
text_string = gets.chomp
puts "Enter the word to be searched for"
word = gets.chomp
text_string.highlight(word)

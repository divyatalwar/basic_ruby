
require_relative "../lib/string"
puts "Enter the string"
input_string = gets.chomp
output_hash = input_string.count_characters
output_hash.each do |key, value|
  puts "#{ key } : #{ value }"
end


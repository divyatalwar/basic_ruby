require_relative '../lib/name'
puts "Enter the first name"
first_name = gets.chomp
puts "Enter the last name"
last_name = gets.chomp
name1 = Name.new(first_name, last_name)

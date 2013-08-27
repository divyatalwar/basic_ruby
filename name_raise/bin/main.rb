require_relative '../lib/name'
puts "Enter the first name"
first_name = gets.chomp
puts "Enter the last name"
last_name = gets.chomp
puts "\nCASE 1 : When keeping the first letter of the first name small ,ouput will be :\n"
first_name = first_name.downcase
name1 = Name.new(first_name, last_name)
puts name1
puts "\nCASE 2 : When keeping the first name to be nil, ouput will be :\n"
first_name = nil
name2 = Name.new(first_name, last_name)
puts name2


require_relative "../lib/integer"
begin
  puts "Enter the number "
  number = gets.chomp
  raise "Strings not allowed"  if(!(number == "0") && number.to_i == 0)
  raise "Floating point numbers not allowed"  if !(number.to_i == number.to_f)
  raise "Negative numbers not allowed"  if number.to_i < 0
  input = number.to_i
  print "Factorial is : ", input.factorial, "\n"
rescue Exception => exception_type
  puts "Invalid values entered.Please try again : #{ exception_type }"
  retry
end

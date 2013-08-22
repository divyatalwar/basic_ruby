require_relative "../lib/integer"
begin
  puts "Enter the number "
  number = gets.chomp
  raise "Floating point numbers not allowed"  if !(number.to_i == number.to_f)
  input = number == "0" ? 1 : number.to_i 
  print "Factorial is : ", input.factorial, "\n"
rescue Exception => exception_type
  puts "Invalid values entered.Please try again : #{ exception_type }"
  retry
end

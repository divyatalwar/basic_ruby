require_relative "../lib/integer"
begin
  puts "Enter the number "
  number = gets.chomp
  raise "Floating point numbers not allowed"  if !(number.to_i == number.to_f)
  input = number == "0" ? 1 : number.to_i 
  print "Factorial is : ", input.factorial, "\n"
rescue NegativeNumberException
  puts $!, "Please try again" 
  retry
rescue NotAnIntegerException
  puts $!, "Please try again"
  retry
rescue
  puts $!, "Please try again" 
  retry
end

require_relative "../lib/integer"
puts "enter the number upto which u want to find the prime number"
input_number = gets.to_i 
if(input_number < 2)
  puts "check number!!" 
  exit
end
puts "Prime Numbers upto #{input_number} \n2"
3.step(input_number, 2).each {|input| puts input if input.prime }



require_relative "../lib/interest"
print "Enter the principal: "
principal = gets.chomp
print "Enter the time in years: "
time = gets.chomp
interest = Interest.new { [principal.to_f, time.to_f ] }
puts "Difference in the simple and compound interest = Rs #{interest.difference}"


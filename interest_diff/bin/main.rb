
require_relative "../lib/interest"
print "Enter the principal: "
principal = gets.chomp
print "Enter the time in years: "
time = gets.chomp
interest = Interest.new do |x|
  x.principal = principal.to_f
  x.time = time.to_f
  end
puts "Difference in the simple and compound interest = Rs #{interest.difference}"


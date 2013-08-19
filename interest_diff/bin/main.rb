require_relative "../lib/interest"
print "Enter the principal: "
principal = gets.chomp
print "Enter the time in years: "
time = gets.chomp
interest = Interest.new do |x|
  x.principal = principal.to_i
  x.time = time.to_i
  end
puts "Difference in the simple and compound interest = Rs #{interest.difference}"


require_relative "../lib/string"
puts "Enter the first time"
time1 = gets.chomp
puts "Enter the second time"
time2 = gets.chomp
if(time1.valid? && time2.valid?)
  puts time1.add_time(time2)
else 
  puts "Enter valid time"
end

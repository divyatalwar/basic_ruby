require_relative "../lib/string"
puts "enter the first time"
time1 = gets.chomp
puts "enter the second time"
time2=gets.chomp
if (time1.valid? && time2.valid?)
  time1.add_time(time2)
else 
  puts "enter valid time"
end

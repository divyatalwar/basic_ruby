require_relative "../lib/string"
require 'time'
time_regex = /([0-1]?[0-9]|2[0-3]):([0-5][0-9]):([0-5][0-9])/
puts "Enter the first time"
time1 = gets.chomp
puts "Enter the second time"
time2 = gets.chomp
if(time1 =~ time_regex && time1 =~ time_regex)
  time1 = Time.parse(time1)
  time2 = Time.parse(time2)
  puts time1.add_time(time2)
else
  puts "Enter valid time!!"
end

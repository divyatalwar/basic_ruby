require_relative "../lib/time"
time_regex = /([0-1]?[0-9]|2[0-3]):([0-5][0-9]):([0-5][0-9])/
puts "Enter the first time"
time1 = gets.chomp
puts "Enter the second time"
time2 = gets.chomp
if(time1 =~ time_regex && time1 =~ time_regex)
  time1 = Time.parse(time1)
  time2 = Time.parse(time2)
  unformatted_time = time1.add_time(time2)
  print "Time After Addition is: \n" + unformatted_time[:days].to_s + "days and" + unformatted_time[:hours].to_s + ":" + unformatted_time[:mins].to_s + ":" + unformatted_time[:secs].to_s
else
  puts "Enter valid time!!"
end

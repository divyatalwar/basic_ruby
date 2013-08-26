require "date"
require_relative "../lib/gethotels"
puts "enter the check in date"
check_in = Date.parse(gets.chomp)
puts "enter the check out date"
check_out = Date.parse(gets.chomp)
abort("check out cant be made befor check in")  if check_in > check_out
hotels_info = Get_hotels.hotel_list
hotels_info.each do |hotel|
  puts hotel.bill(check_in, check_out)
end


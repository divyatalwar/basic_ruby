require "date"
require_relative "../lib/hotellist"
require_relative "../lib/enquiry"
puts "enter the check in date"
check_in = Date.parse(gets.chomp)
puts "enter the check out date"
check_out = Date.parse(gets.chomp)
abort("check out cant be made before check in")  if check_in > check_out
hotels_info = HotelList.new
hotels_info.get_hotel_list
enquiry = Enquiry.new(check_in,check_out)
hotels_info.show_price_catalogue(enquiry)

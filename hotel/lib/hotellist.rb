require_relative 'hotel'
require_relative 'temp_reservation'
require_relative 'season'
require "json"
class HotelList
  attr_accessor :hotels
  def initialize
    @hotels = []
  end
  def get_hotel_list
    json = File.read("#{ File.dirname(__FILE__) }/hotels.json")
    hotels = JSON.parse(json)
    hotels.each do |info|
      season_details =[]
      name = info["Hotel_name"]
      rate = info["rate"]
      if info["seasonal_rates"]
        info["seasonal_rates"].each do |season|
          season.each do |key, value|
            season_name = key
            season_start = value["start"]
            season_end = value["end"]
            season_rate = value["rate"]
            season_details.push(Season.new(season_name, season_rate, season_start, season_end))
          end
        end      
      end
      tax = info["tax"]
      self.hotels.push(Hotel.new(name, rate, season_details, tax))
    end
  end

  def show_price_catalogue(enquiry)
    hotels.each do |hotel|
      reservation_obj = TempReservation.new(enquiry, hotel)
       puts "\nHotel : #{hotel.name}\n"
      reservation_obj.show_price
      puts "".rjust(50,"*")
    end
  end

end
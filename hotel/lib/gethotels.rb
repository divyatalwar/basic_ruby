require_relative "season"
require_relative "hotel"
require "date"
require "json"
module Get_hotels
  def self.hotel_list
    json = File.read("#{ File.dirname(__FILE__) }/hotels.json")
    hotels = JSON.parse(json)
    hotel_details = []  
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
      hotel_details.push(Hotel.new(name, rate, season_details, tax))
    end
    hotel_details
  end
end

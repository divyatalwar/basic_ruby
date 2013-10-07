require_relative 'billable_season'
class TempReservation
  attr_reader :billable_season_timeline , :hotel, :enquiry
  attr_accessor :total_price
  
  def initialize(enquiry_object, hotel_object)
    @hotel = hotel_object
    @enquiry = enquiry_object
    @total_price = 0
  end

  def show_price
   @billable_season_timeline = get_billable_seasons
    billable_season_timeline.each do |a| 
      self.total_price += (a.calc_price) 
    end
    self.total_price += ((hotel.tax/100) * total_price )
    show_timeline
  end

  def get_billable_seasons
    billable_season_timeline = []
    previous =  enquiry.check_in
    if hotel.seasonal_details.any?
      difference_in_years = enquiry.check_out.year - enquiry.check_in.year
      count = 0  
      while !(difference_in_years < 0 )
        hotel.seasonal_details.each do |season_type|
          season_start_date = Date.parse(season_type.start_date + "-" + ((enquiry.check_in.year + count).to_i).to_s)
          season_end_date = Date.parse(season_type.end_date + "-" + ((enquiry.check_in.year + count).to_i ).to_s)
          season_start_date = season_start_date << 12   if season_end_date < season_start_date
          range = (season_start_date..season_end_date)
          if (enquiry.check_in < season_start_date && enquiry.check_out > season_end_date)
            billable_season_timeline << BillableSeason.new("Normal Days",(previous..range.to_a[0]-1).to_a.length,hotel.rate,previous,range.to_a[0]-1) 
            billable_season_timeline << BillableSeason.new(season_type.name,range.to_a.length,season_type.rate,range.to_a[0],range.to_a[-1])
            previous = season_end_date 
          end 
          if !(range === enquiry.check_in) || !(range === enquiry.check_out)  
            billable_season_timeline << BillableSeason.new(season_type.name,(enquiry.check_in..season_end_date).to_a.length,season_type.rate,enquiry.check_in,season_end_date) if range === enquiry.check_in
            billable_season_timeline << BillableSeason.new(season_type.name,(season_start_date..enquiry.check_out).to_a.length,season_type.rate,season_start_date,enquiry.check_out) if range === enquiry.check_out
          else
            billable_season_timeline << BillableSeason.new(season_type.name,(enquiry.check_in..enquiry.check_out).to_a.length,season_type.rate,enquiry.check_in,enquiry.check_out)
          end
          if (range.to_a & (enquiry.check_in..enquiry.check_out).to_a).empty?
            billable_season_timeline << BillableSeason.new("Normal Days",(enquiry.check_in..enquiry.check_out).to_a.length,hotel.rate,enquiry.check_in,enquiry.check_out)  if previous == enquiry.check_in && enquiry.check_in < season_start_date
          end
        end
        count += 1
        difference_in_years -= 1
      end
      billable_season_timeline << BillableSeason.new("Normal Days",(previous..enquiry.check_out).to_a.length,hotel.rate,previous,enquiry.check_out) if previous <  enquiry.check_out
    else
      billable_season_timeline << BillableSeason.new("Normal Days",(enquiry.check_in..enquiry.check_out).to_a.length,hotel.rate,enquiry.check_in,enquiry.check_out) 
    end
    billable_season_timeline
  end
 
  def show_timeline
    billable_season_timeline.each do |my_timeline|
      puts "".rjust(50,"-")
       print "season- ", my_timeline.season_name, "\n"
       print "From- ", my_timeline.start_date, " To ", my_timeline.end_date, "\n" 
       print "Rate- ", my_timeline.rate, " for ", my_timeline.no_of_days, "days \n"
       print "Price- ", my_timeline.calc_price, "\n"
    end
    puts "so your total will be: #{ total_price }"
    puts "".rjust(50,"-")
  end
  
end
require_relative "season"
require_relative "print"
class Hotel
  attr_reader :name , :rate, :tax
  def initialize(name, rate, seasonal_details, tax)
    @name = name
    @rate = rate.to_f
    @seasonal_details = seasonal_details
    @tax = tax.to_f
  end

  def bill(check_in ,check_out)
    total_price = 0
    season_days, seasonal_bill = get_seasonal_bill(check_in, check_out)
    regular_bill = 0
    total_number_of_days = (check_out - check_in).to_i
    regular_days = total_number_of_days - season_days
    regular_bill = regular_days * rate
    bill = regular_bill + seasonal_bill 
    total_price = bill + (bill * tax / 100).to_f
    Print.display_table(name, regular_bill, seasonal_bill, bill, total_price)
  end
 
  def get_days(start_date, end_date, check_in, check_out)
    season_days = 0
    difference_in_years = check_out.year - check_in.year
    count = 0
    while !(difference_in_years < 0 )
      season_start_date = Date.parse(start_date + "-" + ((check_in.year + count).to_i).to_s)
      season_end_date = Date.parse(end_date + "-" + ((check_in.year + count).to_i ).to_s)
      season_start_date = season_start_date << 12   if season_end_date < season_start_date
      range = (season_start_date..season_end_date)
      if (check_in < season_start_date && check_out > season_end_date)
        season_days += (season_end_date - season_start_date).to_i 
      end 
      if !(range === check_in) || !(range === check_out)  
        season_days += (season_end_date - check_in).to_i if range === check_in
        season_days += (check_out - season_start_date).to_i if range === check_out
      else
        season_days += (check_out - check_in ).to_i
      end
      count += 1
      difference_in_years -= 1
    end
    season_days
  end
  
  def get_seasonal_bill(check_in, check_out)
    seasonal_bill = 0
    total_season_days = 0
    if @seasonal_details
      @seasonal_details.each do |season_type|
        days = get_days(season_type.start_date, season_type.end_date, check_in, check_out)
        seasonal_bill += days * season_type.rate
        total_season_days += days
      end
    end
   return total_season_days , seasonal_bill
  end

end

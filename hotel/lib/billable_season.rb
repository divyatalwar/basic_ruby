class BillableSeason
  attr_reader :season_name, :rate, :start_date, :no_of_days, :end_date
  
  def initialize(occasion, days, rate, start_date, end_date)
    @season_name = occasion
    @no_of_days = days
    @rate = rate
    @start_date = start_date
    @end_date = end_date
  end

  def calc_price
    (no_of_days.to_i * rate.to_f)
  end

end

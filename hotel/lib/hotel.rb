class Hotel
  attr_reader :name , :rate, :tax,:seasonal_details

  def initialize(name, rate, seasonal_details, tax)
    @name = name
    @rate = rate.to_f
    @seasonal_details = seasonal_details
    @tax = tax.to_f
  end

end

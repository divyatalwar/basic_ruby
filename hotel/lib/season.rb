class Season
  attr_reader :name ,:rate,:start_date,:end_date
  def initialize(name,rate,start_date,end_date)
    @name = name
    @rate = rate.to_i
    @start_date = start_date
    @end_date = end_date
  end
end

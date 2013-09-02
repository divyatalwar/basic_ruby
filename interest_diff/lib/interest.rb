
class Interest
  attr_accessor :principal, :time
  def initialize
    yield self
    @rate = 10.0
  end
  def rate
    @rate/100.0
  end
  def simple_interest
    @principal * rate * @time
  end
  def compound_interest
    @principal * (1 + rate) ** @time - @principal
  end
  def difference
    (compound_interest - simple_interest).round(2)
  end
end



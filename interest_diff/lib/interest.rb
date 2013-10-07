
class Interest
  RATE = 10.0
  attr_accessor :principal, :time
  def initialize
    yield self
  end
  def rate
    RATE/100.0
  end
  def simple_interest
    principal * rate * time
  end
  def compound_interest
    principal * (1 + rate) ** time - principal
  end
  def difference
    (compound_interest - simple_interest).round(2)
  end
end



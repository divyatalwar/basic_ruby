
class Interest
  attr_accessor :principal, :time
  def initialize
    yield self
    @rate = 10
  end
  def difference
    simple_interest = @principal * @rate * @time / 100.0
    compound_interest =  @principal * (1 + @rate/100.0) ** @time - @principal
    (compound_interest - simple_interest).round(2)
  end
end


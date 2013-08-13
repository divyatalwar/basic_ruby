require_relative "vehicle_info"
class Bike < Vehicle
  def initialize(name,price,dealer)
    super(name,price)
    @dealer = dealer
  end
  def inspect
    super + " dealer : #@dealer"
  end
end


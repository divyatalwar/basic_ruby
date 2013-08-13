class Vehicle
  def initialize(name ,price)
    @name = name
    @price = price
  end
  def inspect
    "name : #@name  price : #@price "
  end
  attr_writer :price
end
class Bike < Vehicle
  def initialize(name,price,dealer)
    super(name,price)
    @dealer = dealer
  end
  def inspect
    super + " dealer : #@dealer"
  end
end


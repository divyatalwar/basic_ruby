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


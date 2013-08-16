class Vehicle
  attr_writer :price
  def initialize(name ,price)
    @name = name
    @price = price
  end
  def inspect
    " name : #@name , price : #@price "
  end
end


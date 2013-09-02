class Product
  SALES_TAX_RATE = 0.1
  IMPORT_DUTY_RATE = 0.05
  attr_reader :price, :name
  def initialize(name, imported, sale_tax, price)
    @name = name
    @price = price   
    @sale_tax = sale_tax
    @imported = imported
  end
  private
  def sales_tax
    if !@sale_tax
      (@price * SALES_TAX_RATE).round(2)
    else
      0.00
    end  
  end
  def import_duty
    if @imported
      (@price * IMPORT_DUTY_RATE).round(2)
    else
      0.00
    end
  end 
  public
  def total
    (@price + sales_tax + import_duty).round(2)
  end
  def product_details
    details_array = []
    details_array.push(name, import_duty, sales_tax, price, total)
  end
end






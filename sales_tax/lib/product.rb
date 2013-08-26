class Product
  attr_reader :price, :name, :sale_tax, :import_duty, :total
  def initialize(name, imported, sales_tax, price)
    @name = name
    @price = price   
    @sale_tax = sales_tax
    @import_duty = imported
    @total = calculate_total
  end
  def calculate_sales_tax
    if @sale_tax =~ /^no$/i
      sale_tax = @price * 0.1
      sale_tax.round(2)
    else
      0.00
    end  
  end
  def calculate_import_duty
    if @import_duty =~ /^yes$/i
      import_duty = @price * 0.05
      import_duty.round(2)
    else
      0.00
    end
  end 
  def calculate_total
    total = @price + calculate_sales_tax + calculate_import_duty
    total.round(2)
  end
end






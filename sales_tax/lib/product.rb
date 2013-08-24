class Product
  attr_reader :price, :name, :sales_tax, :imported, :total
  def initialize(name, imported, sales_tax, price)
    @name = name
    @price = price   
    @sales_tax = sales_tax
    @imported = imported
    @total = calculate_total
  end
  def calculate_sales_tax
    if @sales_tax =~ /^no$/i
      sale_tax = @price * 0.1
      sale_tax.round(2)
    else
      0.00
    end  
  end
  def calculate_import_duty
    if @imported =~ /^yes$/i
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






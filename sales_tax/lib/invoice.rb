require_relative "print"
class Invoice
  def initialize(products)
    @products = products
    @grand_total = 0
  end
  def calculate_grand_total
    @products.inject(0) { |sum, product| sum += product.total }
  end
  def generate
    @grand_total = calculate_grand_total
    headings = ['name', 'imported', 'sales_tax', 'price', 'Taxed_price']
    Print.display_table(headings, @products, @grand_total.round(2))    
   end
end

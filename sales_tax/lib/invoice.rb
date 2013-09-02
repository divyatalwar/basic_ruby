require_relative "tabular"
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
    Tabular.display_table(headings, data_array, @grand_total.round(2))    
   end
  def data_array
    list_of_items = []
    @products.each do |item|
      list_of_items.push(item.product_details)
    end
    list_of_items
  end
end

require_relative "../lib/product"
require_relative "../lib/invoice"
list = []
bool = true
while bool
  print "Name of the product: "
  name = gets.chomp
  print "Imported?: "
  imported = gets.chomp
  print "Exempted from sales tax? "
  sales_tax = gets.chomp
  print "Price: "
  price = gets.chomp.to_f
  list.push(Product.new(name, imported, sales_tax, price))
  print "Do you want to add more items to your list(y/n): "
  bool = false if gets =~ /^n$/i
end
new_invoice= Invoice.new(list)
new_invoice.generate


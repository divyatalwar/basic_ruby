class Print
  def self.display_table(header,products,grand_total)
    table_width = 17 * header.count
    puts "".rjust(table_width,'*')
    header.each {|title| print "|",title.center(16) }
    puts "|\n"
    puts "".rjust(table_width,'*')
    products.each do |row|
      print "|" , row.name.center(16)
      print "|" , row.imported.center(16)
      print "|" , row.sales_tax.center(16)
      print "|" , row.price.to_s.center(16)
      print "|" , row.total.to_s.center(16)
      puts "|\n"
    end
    puts "".rjust(table_width,'*')
    puts "Grand Total : #{grand_total.to_s}".center(table_width)
    puts "".rjust(table_width,'*')
  end
end

class Tabular
  def self.display_table(header,data_array,grand_total)
    table_width = 17 * header.count
    puts "".rjust(table_width,'*')
    header.each {|title| print "|",title.center(16) }
    puts "|\n"
    puts "".rjust(table_width,'*')
    data_array.each do |value|
      value.each_index do |index|
        print "|", "#{ value[index] }".to_s.center(16)
      end
      puts "|"
    end
    puts "".rjust(table_width,'*')
    puts "Grand Total : #{grand_total.to_s}".center(table_width)
    puts "".rjust(table_width,'*')
  end
end

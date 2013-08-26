class Print
  def self.display_table(name,regular_bill, seasonal_bill, bill, total_price)
    puts "".rjust(48,'*')
    print "\nHotel Name :".ljust(40) + name
    print "\nRegular bill :".ljust(40) + regular_bill.to_s
    print "\nSeason Days Bill:".ljust(40) + seasonal_bill.to_s
    print "\nTotal Bill: ".ljust(40) + bill.to_s
    print "\nTotal Bill (After Tax): ".ljust(40) + total_price.round.to_s
    print "\n"
  end
end

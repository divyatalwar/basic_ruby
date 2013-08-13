require_relative "../lib/bike"
bike1 = Bike.new("Karizma ", 80000, "Honda")
puts bike1.inspect
bike1.price = 90000
puts bike1.inspect

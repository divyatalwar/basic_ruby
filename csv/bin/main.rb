require_relative "../lib/csv"
puts "Reading a csv file...."
csv_object = Csv.new
csv_object.read_csv("#{ File.dirname(__FILE__) }/sample.csv")
puts "Writing to a new text file ..."
csv_object.write_csv("#{ File.dirname(__FILE__) }/output.txt")


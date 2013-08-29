require_relative "../lib/csv"
include Csv
puts "Reading a csv file...."
employee_info = read_from_csv("#{ File.dirname(__FILE__) }/sample.csv")
puts "Writing to a new text file ..."
write_to_text("#{ File.dirname(__FILE__) }/output.txt", employee_info)


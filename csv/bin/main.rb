require_relative "../lib/csv"
puts "Reading a csv file...."
employee_info = read_csv("#{ File.dirname(__FILE__) }/sample.csv")
puts "Writing to a new text file ..."

File.open("#{ File.dirname(__FILE__) }/output.txt", "w") do |file|
  employee_info.group_by { |employee| employee.designation }.sort.each do |key, value|
    file.puts key + 's'
    value.each do |emp |
      file.puts "#{ emp.name }  (EmpId:#{emp.id}) "      
    end
  end
end

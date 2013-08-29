require "csv"
require_relative "employee"
module Csv
  def read_from_csv(file_name)
    employee_details = []
    CSV.foreach(ARGV.shift || file_name) do |row|
      name, id, designation = row.each { |word|  word }
      employee_details.push(Employee.new(name, id, designation))
    end
    employee_details
  end

  def write_to_text(file_name, employee_info)
    File.open(file_name, "w") do |file|
      employee_info.group_by { |employee| employee.designation }.sort.each do |key, value|
        file.puts key + 's'
        value.each do |emp |
          file.puts "#{ emp.name }  (EmpId:#{emp.id}) "      
        end
      end
    end
  end
end

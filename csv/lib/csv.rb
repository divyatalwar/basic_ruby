require "csv"
require_relative "employee"
def read_csv(file_name)
  employee_details = []
  CSV.foreach(ARGV.shift || file_name) do |row|
    name, id, designation = row.each { |word|  word }
    employee_details.push(Employee.new(name, id, designation))
  end
  employee_details
end



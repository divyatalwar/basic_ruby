require "csv"
class Csv
  def initialize
    @hash = Hash.new{ |hash, key| hash[key] = [] }
  end

  def read_csv(file_name)
    CSV.foreach(ARGV.shift || file_name) do |line_number|
      @hash[line_number[2]] <<  line_number[0] + "(Emp Id:#{ line_number[1] })" 
    end
  end

  def write_csv(file_name)
    File.open(file_name, "w") do |file|
      @hash.each do |key, value|
        file.puts "#{ key }"
        value.each do |value|
          file.puts "#{ value }"      
        end
      end
    end
  end
end

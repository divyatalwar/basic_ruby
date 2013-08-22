require "csv"
hash = Hash.new{ |hash, key| hash[key] = [] }
CSV.foreach(ARGV.shift || "#{ File.dirname(__FILE__) }/sample.csv") do |line_number|
  hash[line_number[2]] <<  line_number[0] + "(Emp Id:#{ line_number[1] })" 
end

File.open("#{ File.dirname(__FILE__) }/output.txt", "w") do |file|
  hash.each do |key, value|
    file.puts "#{ key }"
    value.each do |value|
      file.puts "#{ value }"      
      end
    end
  end

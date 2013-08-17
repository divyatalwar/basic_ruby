require_relative "string"
  def add_time(*time_args)
    total_time =0 
    time_args.each {|date| exit if !date.valid? }
    time_args.each do |new_time| 
    total_time += new_time.to_seconds
    end
    days = (total_time / (24 * 3600)).to_i
    number_of_days = "#{days} days & " if days > 0
    time_string = "Time after addition is: \n" + number_of_days + Time.at(total_time).utc.strftime("%H : %M : %S") 
    puts time_string
  end

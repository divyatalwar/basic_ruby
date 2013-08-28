require 'time'
class Time
  def add_time(time)
    time_in_seconds = time.hour * 3600 + time.min * 60 + time.sec
    result_time = self + time_in_seconds
    "Time after addition is: \n" + ((self.day != result_time.day) ? "1 day & " : "") + result_time.strftime("%H :%M :%S").to_s 
  end
end

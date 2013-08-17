require "time"
class String
  def valid?
    time_format = /([0-1]?[0-9]|2[0-3]):([0-5][0-9]|60):([0-5][0-9]|60)/
    return true if self =~ time_format
  end
  def to_seconds(time)
    new_tym = Time.parse(time)
    return ((new_tym.hour * 3600) + (new_tym.min * 60) + new_tym.sec)
  end
  def add_time(time2)
    first_time = to_seconds(self)
    second_time = to_seconds(time2)
    total_time = first_time + second_time
    time_string = "Time after addition is: \n" + ( total_time > 24 * 3600 ? "1 day & " : "") + Time.at(total_time).utc.strftime("%H : %M : %S") 
    puts time_string
  end
end

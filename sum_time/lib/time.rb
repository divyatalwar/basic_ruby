require 'time'
class Time

  def add_time(time)
    time_in_seconds = time.hour * 3600 + time.min * 60 + time.sec
    result_time = self + time_in_seconds
    days = self.day != result_time.day ? 1 : 0
    return ({ days: days, hours: result_time.hour, mins: result_time.min, secs: result_time.sec })
  end

end

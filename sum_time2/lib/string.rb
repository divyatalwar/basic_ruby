
require "time"
 class String
  def valid?
    time_format = /([0-1]?[0-9]|2[0-3]):([0-5][0-9]|60):([0-5][0-9]|60)/
    return true if self =~ time_format 
  end
  def to_seconds
    new_time = Time.parse(self)
   return ((new_time.hour * 3600) + (new_time.min * 60) + new_time.sec)
  end
  
end



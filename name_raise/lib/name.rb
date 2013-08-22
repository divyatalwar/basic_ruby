class Name
  def initialize(first_name, last_name)
    begin  
      raise 'First name cannot be left empty ' if first_name.strip.empty?
      raise 'Last name cannot be left empty ' if last_name.strip.empty?
      raise 'First letter of your first name is not capital ' if !(first_name == first_name.capitalize)
      @first_name = first_name
      @last_name = last_name
    rescue Exception => exception_type
      print "Invalid :", exception_type, "\n"     
    end
  end

  def to_s
    "#{ @first_name } #{ @last_name }"
  end
end



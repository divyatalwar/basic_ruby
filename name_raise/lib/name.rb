require_relative "exception"
class Name
  def initialize(first_name, last_name)
    begin  
      raise MyException.new(true), 'First name cannot be null or empty ' if first_name.nil? || first_name.empty?
      raise MyException.new(true), 'Last name cannot be null or  empty ' if last_name.nil? || last_name.empty?
      raise MyException.new(true), 'First letter of your first name is not capital ' if !(first_name == first_name.capitalize)
      @first_name = first_name
      @last_name = last_name
    rescue MyException
      print "Invalid :", $!
    end
  end

  def to_s
    "#{ @first_name } #{ @last_name }"
  end
end



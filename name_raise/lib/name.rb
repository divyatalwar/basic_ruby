class Name
  def initialize(first_name, last_name)
    begin
      @first_name = first_name
      @last_name = last_name
      raise 'Cannot be left empty' if ( @first_name.length == 0 || @last_name.length == 0 )
      raise 'First letter of your first name is not capital' if !(@first_name == @first_name.capitalize)
    rescue Exception => exception_type
      print "invalid :" , exception_type , "\n"     
    end
  end
end


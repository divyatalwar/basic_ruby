require_relative "exception"
class Name

  def initialize
    @first_name = input_name("First") 
    @last_name = input_name("Last") 
  end

  def input_name(type)
    puts "Enter #{type} name:"
    input = gets.chomp
    raise NameNilOrEmptyError ,"#{type} name cannot be null or empty" if input.nil? || input.empty?
    raise FirstNameNotCapital ,"first letter ot capital" if type == "First" && (input != input.capitalize)
    input
  end

  def to_s
    "#{ @first_name } #{ @last_name }"
  end

end



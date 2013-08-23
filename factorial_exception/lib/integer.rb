require_relative "exception"
class Integer
  def factorial
    result = 1
    if self == 0
    raise NotAnIntegerException, "Strings not allowed"
    elsif self < 0
    raise NegativeNumberException , "Negative numbers not allowed"
    else
      for i in 1..self    
        result *= i
      end
      result
    end  
  end
end


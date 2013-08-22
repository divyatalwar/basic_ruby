class Integer
  def factorial
    result = 1
    if self == 0
    raise "Strings not allowed"
    elsif self < 0
    raise "Negative numbers not allowed"
    else
      number = self
      while(number > 0)
        result *= number
        number -= 1
      end
    end
    result
  end
end


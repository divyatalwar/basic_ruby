class Integer
  def factorial
    if self > 0
      puts "the factorial is ", (1..self).inject(:*)
    elsif self == 0
      puts "factorial is 1" 
    end
  end
end


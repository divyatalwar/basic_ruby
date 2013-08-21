class Integer
  def factorial
    result = 1
    1.upto(self) do |i|
      result *= i
      end
    result
  end
end


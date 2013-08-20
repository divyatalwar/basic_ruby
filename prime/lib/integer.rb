require 'mathn'
class Integer
  def prime_numbers_till
    3.step(self, 2) do |input| 
      puts input if input.prime?
      end
   end
end



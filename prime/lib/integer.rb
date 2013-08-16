require 'prime'
class Integer
  def prime
    Prime.prime?(self)
  end
end



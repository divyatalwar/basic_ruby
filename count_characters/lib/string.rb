class String
  def count_characters
    hash = Hash.new(0)    
    lowercase_range, uppercase_range, digit_range, whitespaces = ('a'..'z'), ('A'..'Z'), ('0'..'9'), ' '
    each_char do |element|
      case element
      when lowercase_range then hash["lowercase"] += 1
      when uppercase_range then hash["uppercase"] += 1
      when digit_range then hash["digits"] += 1
      when whitespaces 
      else hash["special_characters"] += 1
      end
    end
    hash
  end
end


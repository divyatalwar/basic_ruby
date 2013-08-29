class String
  def count_characters
    character_count = Hash.new(0)    
    lowercase_range, uppercase_range, digit_range, whitespaces = ('a'..'z'), ('A'..'Z'), ('0'..'9'), ' '
    each_char do |element|
      case element
      when lowercase_range then character_count["lowercase"] += 1
      when uppercase_range then character_count["uppercase"] += 1
      when digit_range then character_count["digits"] += 1
      when whitespaces 
      else character_count["special_characters"] += 1
      end
    end
    character_count
  end
end


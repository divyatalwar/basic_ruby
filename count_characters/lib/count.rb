class String
  def count_characters
    lowercase = 0
    uppercase = 0
    digits = 0
    special_characters = 0
    each_char do |element|
      case element
        when ('a'..'z') then lowercase += 1
        when ('A'..'Z') then uppercase += 1
        when ('0'..'9') then digits += 1
        else special_characters += 1
      end
    end
    puts "Lowercase characterss: #{lowercase}\nUppercase characters : #{uppercase}\nDigits : #{digits}\nSpecial Characters : #{special_characters}\n"
  end
end


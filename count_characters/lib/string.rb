class String
  def count_characters
    lowercase = 0
    uppercase = 0
    digits = 0
    special_characters = 0
    lowercase_range, uppercase_range, digit_range, whitespaces = ('a'..'z'), ('A'..'Z'), ('0'..'9'), /\s/
    each_char do |element|
      if lowercase_range === element 
        lowercase += 1
      elsif uppercase_range ===  element
         uppercase += 1
      elsif digit_range === element
        digits += 1
      elsif !(element =~ whitespaces) 
        special_characters += 1
      end
    end
    puts " Lowercase Characters: #{ lowercase }\nUppercase Characters : #{ uppercase }\nDigits : #{ digits }\nSpecial Characters : #{ special_characters }\n"
  end
end


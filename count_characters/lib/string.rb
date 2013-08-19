class String
  def count_characters
    lowercase = 0
    uppercase = 0
    digits = 0
    special_characters = 0
    each_char do |element|
      if ('a'..'z') === element 
        lowercase += 1
      elsif ('A'..'Z') ===  element
         uppercase += 1
      elsif ('0'..'9') === element
        digits += 1
      elsif !( element =~ /\s/) 
        special_characters += 1
      end
    end
    puts " Lowercase characterss: #{ lowercase }\nUppercase characters : #{ uppercase }\nDigits : #{ digits }\nSpecial Characters : #{ special_characters }\n"
  end
end


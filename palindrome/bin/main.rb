class String
  def palindrome?
    downcase == downcase.reverse 
  end 
end
puts "Enter the string"
input = gets.chomp
return if input =~ /^[q]$/i
print "input string is " , input.palindrome? ? " a palindrome" : "not a palindrome" ,"\n"

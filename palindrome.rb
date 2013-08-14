class String
  def palindrome
    self == reverse 
  end 
end
puts "Enter the string"
input = gets.chomp
return if input =~ /^[q]$/i
print "input string is " , input.downcase.palindrome ? " a palindrome" : "not a palindrome" ,"\n"

class String
  def palindrome?
    downcase == downcase.reverse 
  end 
end
while true
  puts "Enter the string"
  input = gets.chomp
  break if input =~ /^[q]$/i
  print "input string is " , input.palindrome? ? " a palindrome" : "not a palindrome" ,"\n"
end

def check(string)
  return if string =~ /^[q]$/i
  puts "the given input string is " + ( string == string.reverse ? "" : "not" ) + " a palindrome"
end 
puts "Enter the string"
string = gets.downcase.chomp
check(string)

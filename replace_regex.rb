puts "please enter input string: "
string = gets
string = string.gsub(/a|e|i|o|u/i, "*")
puts string

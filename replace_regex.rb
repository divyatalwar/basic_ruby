puts "please enter some text: "
string = gets
string = string.gsub(/a|e|i|o|u/i, "*")
puts string

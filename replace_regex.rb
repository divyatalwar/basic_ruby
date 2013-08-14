puts "please enter input string: "
string = gets.chomp
puts string.gsub(/[aieou]/i,"*")

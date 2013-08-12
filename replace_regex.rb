def check_regex(string)
  string.each_char { |i| string[i] = "*" if i =~ /[aeiou]/i }
  string
end
puts "please enter input string: "
string = gets.chomp
puts check_regex(string)

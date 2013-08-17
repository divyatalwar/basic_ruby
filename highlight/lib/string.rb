class String
  def highlight(word)
    count = 0
    gsub! (/#{word}/i) do |matched_part|
    count = count + 1
    "(" + matched_part + ")"
    end
    puts "the string after highlighting is ", self + "\nTotal Occurences found: #{count}"
  end
end
    

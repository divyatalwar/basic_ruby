class String
  def reverse_sentence
    split(/\s/).reverse.join(" ")
  end
end

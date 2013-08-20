def pascal_generator(value)
   (value + 1).times do |i| 
    yield(i)
    puts ""
  end
end

def pascal(number) 
  pascal_generator(number) do |i|
    x = 1
    (i+1).times do |j|
      print x ," "
      x = x * (i+1 - (j+1)) / (j+1)
    end
  end
end


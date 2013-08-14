def pascal_generator(value)
  for i in 1..(value + 1) 
    yield(i)
    puts ""
  end
end

def pascal(number) 
  pascal_generator(number) do |i|
    x = 1
    for j in 1..i
      print x ," "
      x = x * (i - j) / (j)
    end
  end
end


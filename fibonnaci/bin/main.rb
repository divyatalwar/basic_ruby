def fibonacci_series
  second_last = 0
  previous = 1
  printf("fibonacci series :%s", "0 1 ")
  while (new_number = second_last + previous ) < 1000
    yield(new_number)
    second_last = previous    
    previous = new_number
  end
end
fibonacci_series { |series| print "#{series} " }
puts "\n"

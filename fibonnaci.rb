def fibonacci_series
  first_number = 0
  second_number = 1
  printf("fibonacci series :%s", "#{first_number} #{second_number}")
  while 
    third_number = first_number + second_number
    yield(third_number,1000)
    first_number = second_number
    second_number = third_number
  end
end
fibonacci_series do
|series ,max_limit|
break if series > max_limit
print " #{series}"
end
puts "\n"

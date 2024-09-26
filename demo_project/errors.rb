#!/usr/bin/env ruby

def divide(x,y)
  x/y
rescue ZeroDivisionError => e
  "Cannot divide by zero (#{e.class})"
rescue TypeError
  "Requires two integers as arguments"
end

begin
  puts divide(1,0)
  puts divide(4,"2")
  puts divide(4)
# rescue ArgumentError
#   puts "Requires two arguments"
rescue => e
  puts "#{e.class}: #{e.message}"
end
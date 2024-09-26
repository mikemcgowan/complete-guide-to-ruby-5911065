#!/usr/bin/env ruby

def divide(x,y)
  x/y
rescue ZeroDivisionError
  "Cannot divide by zero"
rescue TypeError
  "Requires two integers as arguments"
end

begin
  puts divide(1,0)
  puts divide(4,"2")
  puts divide(4)
rescue ArgumentError
  puts "Requires two arguments"
rescue
  puts "Something went wrong"
end
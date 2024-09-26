#!/usr/bin/env ruby

def divide(x,y)
  x/y
# rescue
#   "Cannot divide by zero"
end

begin
  puts divide(1,0)
rescue
  puts "Cannot divide by zero"
end
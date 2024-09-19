#!/usr/bin/env ruby

def subtract(n1,n2)
  result = n1 - n2
  result = 0 if result < 0
  result
end

puts subtract(8,3)

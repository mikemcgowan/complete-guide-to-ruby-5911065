#!/usr/bin/env ruby

def subtract(n1,n2)
  result = n1 - n2
  result = 0 if result < 0
  result
end

puts subtract(8,3)

def add_and_subtract(n1,n2)
  add = n1 + n2
  sub = n1 - n2
  [add, sub]
end

result = add_and_subtract(8,3)
a = result[0]
s = result[1]

puts a
puts s

a,s = add_and_subtract(8,3)

puts a
puts s

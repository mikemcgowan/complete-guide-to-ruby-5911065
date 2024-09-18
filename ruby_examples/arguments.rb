#!/usr/bin/env ruby

def welcome(greeting, target)
  puts "#{greeting} #{target}!"
end

welcome('Hello', 'world')

# order of arguments matters
# welcome('world', 'Hello')

def volume(x,y,z)
  x * y * z
end

puts volume(2,3,4)
puts volume(5,6,7)

# number of arguments matters
# puts volume(2,3)



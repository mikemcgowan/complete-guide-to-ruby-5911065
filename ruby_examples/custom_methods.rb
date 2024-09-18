#!/usr/bin/env ruby

def welcome
  puts "Hello world!"
end

welcome

# can be called again
welcome

# can be redefined without error
def welcome
  puts "Hello everyone!"
end

welcome

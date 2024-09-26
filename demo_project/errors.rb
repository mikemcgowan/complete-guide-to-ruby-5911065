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

class NoEvenNumbers < StandardError
  attr_reader :array

  def initialize(array=[])
    @array = array
    super("No even numbers included")
  end
end

def even_numbers(array=[])

  unless array.is_a?(Array)
    raise ArgumentError
  end

  if array.length == 0
    raise StandardError.new("Too few elements")
  end

  evens = array.find_all {|el| el.to_i % 2 == 0}

  if evens.length == 0
    raise NoEvenNumbers.new(array)
  end
end

puts "-----"

begin
  evens = even_numbers([1,3,5])
  puts evens.join(',')
rescue => e
  puts "#{e.class}: #{e.message}"
  puts "The original array was: [#{e.array.join(',')}]"
end
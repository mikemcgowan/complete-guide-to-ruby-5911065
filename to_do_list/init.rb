#!/usr/bin/env ruby

require_relative 'classes/to_do_list'

list = LIL::ToDoList.new(['dishes', 'nap', 'laundry', 'vacuum'])

puts "*** To Do List Challenge ***"
puts
puts "Items: " + list.count.to_s
puts
puts "First: " + list.first
puts
puts "Last: " + list.last
puts
puts "Longest: " + list.find {|item| item.length > 6 }
puts
puts "Original list:"
puts list.map {|item| "> #{item.capitalize}" }

list << "sweep"
puts
puts "Updated list:"
puts list.map {|item| "> #{item.capitalize}" }

puts
puts "Sorted:"
list.sort.each_with_index do |item, i|
  puts "#{i+1}: #{item}" 
end
puts

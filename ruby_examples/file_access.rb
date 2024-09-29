#!/usr/bin/env ruby

file = File.new('ruby_examples/groceries.txt', 'w')

file.puts "Grocery List"
file.print "+ butter\n"
file.write "+ milk\n"
file << "+ sugar\n"

file.close

File.open('ruby_examples/groceries.txt', 'r') do

end
#!/usr/bin/env ruby

# will truncate/overwrite the file each time
file = File.new('ruby_examples/groceries.txt', 'w')

file.puts "Grocery List"
file.print "+ butter\n"
file.write "+ milk\n"
file << "+ sugar\n"

file.close

File.open('ruby_examples/groceries.txt', 'r') do |file|

  # puts file.read(4)
  # puts file.read(4)

  line1 = file.gets.chomp
  puts line1.upcase

  file.each_line do |line|
    puts line.chomp.reverse
  end

end
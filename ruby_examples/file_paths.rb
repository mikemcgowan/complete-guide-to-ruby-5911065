puts "This file (relative): " + __FILE__
puts "This file (absolute): " + File.expand_path(__FILE__)
puts 

puts "This dir (relative): " + File.dirname(__FILE__)
puts "This dir (absolute): " + File.expand_path(File.dirname(__FILE__))
puts "This dir (absolute): " + __dir__
puts



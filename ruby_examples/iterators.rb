
5.times {|n| puts n}

puts "---"

fruits = ['banana', 'apple', 'pear']

fruits.each do |fruit|
  puts fruit.capitalize
end

puts "---"

car = {
  'brand' => 'Ford', 
  'model' => 'Mustang', 
  'color' => 'blue', 
  'interior_color' => 'tan'
}

car.each do |k,v|
  puts "#{k}: #{v}"
end



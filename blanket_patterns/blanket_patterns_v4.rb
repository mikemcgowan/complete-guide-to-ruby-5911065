# Blanket Patterns Solution 4
# Similar to Solution 3, but fancy
# Changes characters at halfway point
# Reverses direction after halfway point

colors = "=|/|/|=|/|"
lines = 20
halfway = (lines / 2.0).floor

colors_array = colors.split('')

# output first half
1.upto(halfway) do |n|
  first = colors_array.shift
  colors_array << first
  puts colors_array.join
end

# Swap characters and output the result
colors_array.each_index do |i|
  if colors_array[i] == '/'
    colors_array[i] = '\\'
  end
end
puts colors_array.join

# output second half
halfway.upto(lines) do |n|
  last = colors_array.pop
  colors_array.unshift(last)
  puts colors_array.join
end

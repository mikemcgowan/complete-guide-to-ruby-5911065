# Blanket Patterns Solution 1
# Uses a loop
# Changes the start of the new string without modifying the original string

colors = "RRGGBBYYKK"
lines = 20

count = 0
while count < lines
  pos = count
  pos -= 10 if count > 10
  # Or...
  # Integer#modulo divides a number by another and returns the remainder
  # start = count.modulo(colors.length)

  first_half = colors[pos..-1]
  second_half = colors[0...pos]
  puts first_half + second_half
  count += 1
end

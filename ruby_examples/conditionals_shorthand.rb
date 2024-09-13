count = 1

puts count == 1 ? "#{count} person" : "#{count} people"

DEFAULT_LIMIT = 100
limit = nil

max = limit || DEFAULT_LIMIT

puts max

limit ||= DEFAULT_LIMIT

puts limit

limit = DEFAULT_LIMIT unless limit

puts "You are the only person in this chat room." if count == 1

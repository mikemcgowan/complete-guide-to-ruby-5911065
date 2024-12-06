#!/usr/bin/env ruby

def to_sentence(array, options={})
  join_word = options[:join_word] || 'and'
  case array.length
	when 0
	  ""
	when 1
	  array.first.to_s
	when 2
		array.join(" #{join_word} ")
	else
    array[0..-2].join(', ') + ", #{join_word} #{array[-1]}"
	end
end

array = ['red', 'green', 'blue']

puts to_sentence(array)
puts to_sentence(array, {join_word: 'or'})

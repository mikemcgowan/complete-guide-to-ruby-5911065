#!/usr/bin/env ruby

VOWELS = ['a', 'e', 'i', 'o', 'u']

def find_vowel_in_string(string="")
  string.each_char do |char|
    if VOWELS.include?(char)
      return string.index(char)
    end
  end
  nil
end

def find_vowel_in_array(array=[])
  array.find_index {|char| VOWELS.include?(char) }
end

def pig_latin(word="")
  
  word.downcase!
  
  char_array = word.split('')
  first_vowel_pos = find_vowel_in_array(char_array)
  
  if first_vowel_pos.to_i > 0
    front = char_array[0...first_vowel_pos]
    main = char_array[first_vowel_pos..-1]
  else
    front = []
    main = char_array
  end
  
  main.join + front.join + 'ay'

end

words = ['pig', 'latin', 'elevator', 'glove', 'where', 'Ruby']

words.each do |word|
  print word + ' -> '
  puts pig_latin(word)
end

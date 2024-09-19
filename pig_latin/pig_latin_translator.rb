#!/usr/bin/env ruby

VOWELS = ['a', 'e', 'i', 'o', 'u']
PUNCTUATION = ['.', ',', ';', ':', '!', '?']

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

def remove_punctuation(word="")
  punct = ''
  last_char = word[-1,1]
  if PUNCTUATION.include?(last_char)
    punct = last_char
    word = word.chop
  end
  [word, punct]
end

def sentence_to_pig_latin(sentence="")
  words = sentence.split(' ')
  array = words.map do |word|
    word_only, punct = remove_punctuation(word)
    pig_latin(word_only) + punct
  end
  array.join(' ').capitalize
end

def display_intro
  puts "\n>> Pig Latin Translator <<\n\n"
  puts "Type phrases to translate after each prompt."
  puts "Type 'quit' to exit."
  puts
end

def pig_latin_translator
  display_intro
  loop do
    print "translate: "
    input = gets.chomp
    if input == 'quit'
      exit!
    else
      puts sentence_to_pig_latin(input)
      puts
    end
  end
end

# Launch the translator
pig_latin_translator

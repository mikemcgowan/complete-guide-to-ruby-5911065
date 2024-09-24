#!/usr/bin/env ruby

require_relative 'classes/dice'
require_relative 'classes/dice_four'
require_relative 'classes/dice_eight'
require_relative 'classes/dice_ten'
require_relative 'classes/dice_twelve'
require_relative 'classes/dice_twenty'

dice_sizes = {
  4 => DiceFour.new,
  6 => Dice.new,
  8 => DiceEight.new,
  10 => DiceTen.new,
  12 => DiceTwelve.new,
  20 => DiceTwenty.new
}

def status(dice)
  "\nd#{dice.sides}: #{dice.display}"
end

puts "-" * 26
puts " Welcome to Dungeon Dice "
puts "-" * 26
puts

dice = Dice.new
puts status(dice)

response = nil
until response == 'q'
  puts "\nType 'r' to roll, 'c' to change size, 'q' to quit"
  print '> '
  response = gets.chomp

  if response == 'c'
    puts "\nAvailable sizes: #{dice_sizes.keys.join(', ')}"
    print '> '
    new_size = gets.chomp
    new_dice = dice_sizes[new_size.to_i]
    if new_dice.nil?
      puts "Invalid size"
    else
      dice = new_dice
      dice.roll
      puts status(dice)
    end
  elsif response == 'r'
    dice.roll
    puts status(dice)
  end
  
end

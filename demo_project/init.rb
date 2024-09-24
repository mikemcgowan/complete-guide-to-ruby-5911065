#!/usr/bin/env ruby

require_relative 'classes/person'
require_relative 'classes/animal'
require_relative 'classes/cow'
require_relative 'classes/duck'
require_relative 'classes/pig'

Animal.new.sleep

wilbur = Pig.new
puts wilbur.noise
wilbur.sleep
wilbur.eat

maisie = Cow.new
puts maisie.noise
maisie.sleep
maisie.jump

daffy = Duck.new
puts daffy.noise
daffy.sleep
daffy.fly
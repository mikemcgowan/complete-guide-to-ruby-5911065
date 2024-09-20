#!/usr/bin/env ruby

require_relative 'classes/person'
require_relative 'classes/animal'

person1 = Person.new
person2 = Person.new

pig = Animal.new

pig.noise = 'Oink!'
pig.noise=('Oink!')

puts pig.noise

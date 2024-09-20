#!/usr/bin/env ruby

require_relative 'classes/person'

person1 = Person.new
person2 = Person.new

puts person1.object_id
puts person2.object_id

person1.say_hello

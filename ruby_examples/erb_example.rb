#!/usr/bin/env ruby

require 'erb'

template = "<% 3.times do |n| %>"
template << "Year: <%= Time.now.year + n %>\n"
template << "<% end %>"
# puts template

renderer = ERB.new(template)
puts renderer.result

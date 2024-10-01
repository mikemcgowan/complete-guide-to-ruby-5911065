#!/usr/bin/env ruby

require 'erb'

template = "<% 3.times do |n| %>"
template << "Year: <%= @year + n %>\n"
template << "<% end %>"
# puts template

@year = Time.now.year

renderer = ERB.new(template)
puts renderer.result(binding)

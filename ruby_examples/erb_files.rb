#!/usr/bin/env ruby

require 'erb'

this_dir = File.expand_path(File.dirname(__FILE__))
template_path = File.join(this_dir, 'inquiry_template.txt.erb')

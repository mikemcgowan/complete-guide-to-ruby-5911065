#!/usr/bin/env ruby

#### Restaurant Finder ####

APP_ROOT = File.expand_path(File.dirname(__FILE__))

require_relative 'lib/classes/controller'

begin
  guide = RFinder::Controller.new
  guide.launch!
rescue => e
  puts "An error occurred:"
  puts e.message
end

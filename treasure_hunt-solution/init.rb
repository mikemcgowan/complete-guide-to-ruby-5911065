#!/usr/bin/env ruby

# Challenge: Treasure Hunt
#
# Searches the hunt_dir for files containing "treasure"
#
# Outputs the file path when "treasure" is found
# Example:
# "Found treasure! buried_treasure/swamp/old_crate.txt"

def search_directory(dirpath="")
  return if Dir.empty?(dirpath)
  entries = Dir.entries(dirpath) - ['.', '..']
  entries.each do |entry|
    next if entry.start_with?('.')
    relative_path = File.join(dirpath, entry)
    if File.file?(relative_path)
      examine_file(relative_path)
    else
      search_directory(relative_path)
    end
  end
  nil
end

def examine_file(filepath="")
  return unless File.exist?(filepath) && File.readable?(filepath)
  data = File.read(filepath)
  if data.include?('treasure')
    puts "Found treasure! #{filepath}"
  end
  nil
end

def glob_search(dirpath="")
  Dir.glob("#{dirpath}/**/*.txt").each {|path| examine_file(path)}
end

# Change dir to make paths relative to project dir
# __dir__ == File.expand_path(File.dirname(__FILE__))
Dir.chdir(__dir__)

hunt_dir = "buried_treasure"

search_directory(hunt_dir)
# or
# glob_search(hunt_dir)
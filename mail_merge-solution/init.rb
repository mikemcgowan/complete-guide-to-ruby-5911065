#!/usr/bin/env ruby

require 'erb'
require 'csv'

APP_ROOT = File.expand_path(File.dirname(__FILE__))
template_path = File.join(APP_ROOT, 'overdue_notice.txt.erb')
csv_path = File.join(APP_ROOT, 'overdue_list.csv')
output_dir = File.join(APP_ROOT, 'letters')

def number_to_currency(value)
  sprintf('$%.2f', value.to_f)
end

# Read template file containing the overdue notice
template = File.read(template_path)

# Read CSV file to get list of overdue notices
# For each notice:
i = 0
CSV.foreach(csv_path, headers: true) do |row|
  i += 1

  # Set instance variables as needed
  @last_name = row["Last Name"]
  @first_name = row["First Name"]
  @days = row["Days"].to_i
  @title = row["Title"]
  @fee = number_to_currency(@days * 0.25)

  # Use ERB to bind instance variables to the letter template
  letter = ERB.new(template).result(binding)

  # Save results as separate files (e.g., "letters/overdue_01.txt")
  num = i < 10 ? "0#{i}" : i
  file_name = "overdue_#{num}.txt"
  file_path = File.join(output_dir, file_name)
  
  # puts "--- testing ----"
  # puts file_path
  # puts letter
  File.write(file_path, letter)

end

puts "\n#{i} overdue letters were generated in:"
puts output_dir
puts "\n"

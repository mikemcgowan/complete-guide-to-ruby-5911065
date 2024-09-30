#!/usr/bin/env ruby

require 'csv'

this_dir = File.expand_path(File.dirname(__FILE__))
data_dir = File.join(this_dir, 'data')
csv_file = File.join(data_dir, 'us_presidents.csv')

CSV.foreach(csv_file, headers: true) do |row|
  # puts row["Last Name"]
end

presidents = CSV.read(csv_file)
#puts presidents[1][1]

headers = presidents.shift
early_presidents = presidents[0..9]

new_csv_file = File.join(data_dir, 'early_us_presidents.csv')

CSV.open(new_csv_file, 'w') do |csv|
  csv << headers
  early_presidents.each do |array|
    csv << array
  end
end


#!/usr/bin/env ruby

require 'csv'
require 'erb'

APP_ROOT = __dir__
FINE_PER_DAY = 0.10

def number_to_currency(value)
  format('$%.2f', value.to_f)
end

overdue_notice = File.read 'overdue_notice.txt.erb'
overdue_list = File.read 'overdue_list.csv'

# For each notice:
count = 1
CSV.parse(overdue_list, headers: true).each do |row|
  last_name = row['Last Name']
  first_name = row['First Name']
  days = row['Days']
  title = row['Title']
  fee = number_to_currency(days.to_i * FINE_PER_DAY)
  template = ERB.new(overdue_notice)
  result = template.result(binding)
  File.write("#{APP_ROOT}/letters/overdue_#{count}.txt", result)
  count += 1
end

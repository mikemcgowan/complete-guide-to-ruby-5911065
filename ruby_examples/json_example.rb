#!/usr/bin/env ruby

require 'json'

this_dir = File.expand_path(File.dirname(__FILE__))
data_dir = File.join(this_dir, 'data')
json_file = File.join(data_dir, 'us_presidents.json')

json = File.read(json_file)
data = JSON.parse(json)

presidents = data['us_presidents']
# puts presidents[0]

early_presidents = presidents[0..9]

new_data = {'early_us_presidents' => early_presidents}

# json = JSON.generate(new_data)
json = new_data.to_json

new_json_file = File.join(data_dir, 'early_us_presidents.json')
File.write(new_json_file, json)

#!/usr/bin/env ruby

require 'yaml'

this_dir = File.expand_path(File.dirname(__FILE__))
data_dir = File.join(this_dir, 'data')
yaml_file = File.join(data_dir, 'us_presidents.yml')

yaml = File.read(yaml_file)
data = YAML.load(yaml)
presidents = data['us_presidents']
# puts presidents[0]

early_presidents = presidents[0..9]
new_data = {'early_us_presidents' => early_presidents}
#yaml = YAML.dump(new_data)
yaml = new_data.to_yaml

new_yaml_file = File.join(data_dir, 'early_us_presidents.yml')
File.write(new_yaml_file, yaml)

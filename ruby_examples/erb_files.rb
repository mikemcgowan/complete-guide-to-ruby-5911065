#!/usr/bin/env ruby

require 'erb'

this_dir = File.expand_path(File.dirname(__FILE__))
template_path = File.join(this_dir, 'inquiry_template.txt.erb')

template = File.read(template_path)

class Customer
  attr_accessor :first_name, :last_name, :email
end

@customer = Customer.new
@customer.first_name = "Ruby"
@customer.last_name = "Binding"
@customer.email = "noone@nowhere.com"

output = ERB.new(template).result(binding)

puts output

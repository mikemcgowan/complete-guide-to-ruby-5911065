require_relative '../modules/nameable'

class Person

  include Nameable

  def say_hello
    puts "Hello!"
  end

end

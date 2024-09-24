require_relative 'animal'

class Pig < Animal

  def initialize
    self.noise = 'Oink!'
    self.color = 'pink'
  end

  def eat
    puts "Nom nom nom!"
  end

end
require_relative 'animal'

class Duck < Animal

  def initialize
    self.noise = 'Quack!'
    self.color = 'white'
  end

  def fly
    puts "Flying free as a bird!"
  end

end
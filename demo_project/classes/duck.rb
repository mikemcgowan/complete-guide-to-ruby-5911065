require_relative 'animal'

class Duck < Animal

  def initialize
    self.noise = 'Quack!'
    self.color = 'white'
  end

end
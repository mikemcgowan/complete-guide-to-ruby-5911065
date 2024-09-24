require_relative 'animal'

class Cow < Animal

  def initialize
    self.noise = 'Moo!'
    self.color = 'brown'
  end

end
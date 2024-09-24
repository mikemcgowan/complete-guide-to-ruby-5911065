require_relative 'animal'

class Cow < Animal

  def initialize
    self.noise = 'Moo!'
    self.color = 'brown'
  end

  def sleep
    puts "The Cow counts some sheep."
  end

  def jump
    puts "Over the moon we go!"
  end

end
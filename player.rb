#generates a new player
class Player
  attr_accessor :name, :lives

  def initialize (name, lives)
    self.name = name
    self.lives = lives.to_i
  end

end

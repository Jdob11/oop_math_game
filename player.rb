# Player class represents a game player with a name and a number of lives.
class Player
  # The name of the player.
  attr_accessor :name

  # The number of lives the player has.
  attr_accessor :lives

  # Initializes a new Player instance with a given name and sets the initial number of lives to 3.
  #
  # @param name [String] the name of the player
  def initialize(name)
    @name = name
    @lives = 3
  end

  # Decreases the player's lives by 1.
  #
  # @return [void]
  def lose_life
    @lives -= 1
  end

  # Checks if the player is still alive.
  #
  # @return [Boolean] true if the player has more than 0 lives, false otherwise
  def is_alive?
    @lives > 0
  end
end
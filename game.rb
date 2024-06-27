# The Game class manages the flow and state of a two-player math game.
class Game
  # Initializes the game with two players.
  #
  # @param player1_name [String] the name of the first player
  # @param player2_name [String] the name of the second player
  def initialize(player1_name, player2_name)
    @player1 = Player.new(player1_name)
    @player2 = Player.new(player2_name)
    @current_player = @player1
    @game_over = false
  end

  # Starts the game, managing turns until the game is over.
  def start_game
    puts "COMMENCE MATHING NOW!"
    current_turn = 1
    until @game_over
      puts "----- TURN #{current_turn} -----"
      turn = Turn.new(@current_player, @player1, @player2)
      turn.execute_turn
      check_game_over
      switch_turns
      current_turn += 1
    end
  end

  # Switches the current player to the other player.
  def switch_turns
    @current_player = @current_player == @player1 ? @player2 : @player1
  end

  # Checks if the game is over by verifying the players' alive status.
  #
  # If either player is not alive, the game ends and the winner is announced.
  def check_game_over
    unless @player1.is_alive? && @player2.is_alive?
      @game_over = true
      announce_winner
    end
  end

  # Announces the winner of the game and prints a game over message.
  def announce_winner
    winner = @player1.is_alive? ? @player1 : @player2
    puts "#{winner.name} wins with a score of #{winner.lives}/3!"
    puts "----- GAME OVER -----"
    puts "Goodbye!"
  end
end

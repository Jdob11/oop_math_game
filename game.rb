class Game
  def initialize(player1_name, player2_name)
    @player1 = player1_name
    @player2 = player2_name
    @current_player = @player1
    @game_over = false
  end

  def start_game
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

  def switch_turns
    @current_player = @current_player == @player1 ? @player2 : @player1
  end

  def check_game_over
    if !@player1.is_alive? || !@player2.is_alive?
      @game_over = true
      announce_winner
    end
  end

  def announce_winner
    winner = @player1.is_alive? ? @player1 : @player2
    puts "#{winner.name} wins with a score of #{winner.lives}/3!"
    puts "----- GAME OVER -----"
    puts "Goodbye!"
  end
end
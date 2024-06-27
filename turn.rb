# Turn class manages a turn in a game between two players.
class Turn
  # Initializes a new Turn instance with the current player and two opponent players.
  #
  # @param current_player [Player] the player taking the current turn
  # @param player1 [Player] the first player in the game
  # @param player2 [Player] the second player in the game
  def initialize(current_player, player1, player2)
    @current_player = current_player
    @player1 = player1
    @player2 = player2
  end

  # Executes the turn by asking a question to the current player,
  # checking the answer, and updating player scores.
  #
  # @return [void]
  def execute_turn
    question = Question.new
    puts "#{current_player.name}: #{question.generate_question}"
    print "> "
    answer = gets.chomp.to_i

    if question.check_answer(answer)
      puts "#{current_player.name}: YES! You are correct."
    else
      puts "#{current_player.name}: Seriously? No!"
      current_player.lose_life
    end

    puts "P1: #{player1.lives}/3 vs P2: #{player2.lives}/3"
  end

  private

  attr_reader :current_player, :player1, :player2
end


class Turn

  def initialize(current_player, player1, player2)
    @current_player = current_player
    @player1 = player1
    @player2 = player2
  end

  def execute_turn
    question = Question.new
    puts "#{@current_player.name}: #{question.generate_question}"
    print "> "
    answer = gets.chomp.to_i

    if question.check_answer(answer)
      puts "#{@current_player.name}: YES! You are correct."
    else
      puts "#{@current_player.name}: Seriously? No!"
      @current_player.lose_life
    end
    puts "P1: #{@player1.lives}/3 vs P@ #{@player2.lives}/3"
  end
end

class Question
  attr_reader :number1, :number2, :correct_answer

  def initialize
    @number1 = rand(1...20)
    @number2 = rand(1...20)
    @correct_answer = @number1 + @number2
  end

  def generate_question
    "What does #{@number1} plus #{@number2} equal?"
  end

  def check_answer(answer)
    answer == @correct_answer
  end
end
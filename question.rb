# Question class represents a simple arithmetic question generator.
class Question
  # The first random number for the arithmetic question.
  attr_reader :number1

  # The second random number for the arithmetic question.
  attr_reader :number2

  # The correct answer to the arithmetic question.
  attr_reader :correct_answer

  # Initializes a new Question instance with two random numbers between 1 and 20
  # and computes the correct answer.
  #
  # @return [Question] a new Question instance
  def initialize
    @number1 = rand(1...20)
    @number2 = rand(1...20)
    @correct_answer = @number1 + @number2
  end

  # Generates a textual representation of the arithmetic question.
  #
  # @return [String] the generated question string
  def generate_question
    "What does #{@number1} plus #{@number2} equal?"
  end

  # Checks if the provided answer matches the correct answer.
  #
  # @param answer [Integer] the answer provided by the user
  # @return [Boolean] true if the answer is correct, false otherwise
  def check_answer(answer)
    answer == @correct_answer
  end
end

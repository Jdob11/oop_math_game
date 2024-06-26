require './game'
require './player'
require './question'
require './turn'

# Prompt for player names
print "Enter name for Player 1: "
player1_name = gets.chomp

print "Enter name for Player 2: "
player2_name = gets.chomp

# Initialize and start the game
game = Game.new(player1_name, player2_name)
game.start_game
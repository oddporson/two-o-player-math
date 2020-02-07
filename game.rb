require_relative 'players'
require_relative 'questions'

puts "Two-O-Player Math Game"

@playerOne = Players.new('Player 1')
@playerTwo = Players.new('Player 2')

def player_turn(current_player)
  puts "#{current_player.name}: What does #{Questions.randomNum1} plus #{Questions.randomNum2} equal to?"
  isAnswerRight = gets.chomp

  if Questions.check(isAnswerRight)
    puts "YES! You are correct."
  else
    puts "Seriously? No!"
    current_player.wrong_answer
  end

  puts "#{@playerOne.name}: #{@playerOne.life}/3 vs #{@playerTwo.name}: #{@playerTwo.life}/3"

end

loop do
  player_turn(@playerOne)
  break puts "Player 2 wins with a score of #{@playerTwo.life}/3" if (@playerTwo.no_life)
  player_turn(@playerTwo)
  break puts "Player 1 wins with a score of #{@playerOne.life}/3" if (@playerOne.no_life)
  puts "----- NEW TURN -----"
end

if (@playerOne.no_life)
  puts "GAME OVER, PLAYER 1. BETTER LUCK NEXT TIME LOSER!" 
else (@playerTwo.no_life)
  puts "GAME OVER, PLAYER TWO. BETTER LUCK NEXT TIME LOSER!"
end

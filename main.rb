require './players'
require './game'

class MathGame
  def initialize
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
    @game = Game.new(@player1, @player2)
  end

  def play_game
    while @player1.life > 0 && @player2.life > 0 do
      puts "#{@game.current_player.name}: #{@game.generate_random_question}"
      @game.check_answer?(gets.chomp)
    end 
  end
  
end
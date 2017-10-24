require './modboard'
require './game_board'

class Play < Board
  include Game_board


  def play_game(&bloc)
    load_random
    pic
    puts "Please, choose number between 0 and 5"
    yield
    game
  end
end

 a = Play.new
 a.play_game do
   print "\u23F0"
   print "\u0020"
   print "\u0020"
   print "\u0020"
   print "\u23F0"
   print "\u0020"
   print "\u0020"
   print "\u0020"
   print "\u23F0"
   puts
 end

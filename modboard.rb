class Board
  attr_accessor :board

  def initialize
    @board = load_random
end

def load_random
  aboard = Array.new(6){rand(1..10)}

  bboard = Array.new(6){rand(1..10)}

  cboard = aboard | bboard

  board = cboard.slice!(0..5)
  #puts board.to_s
# toss out nil
  if board.include? nil
  board.compact!
  board.push(1,2,3,4,5,6,7,8,9).uniq!
  board.slice!(6..-1)
  #puts board.to_s
  end

#check for "5"
if board.include? 5
  return board
else
  board[1] = 5

 board.shuffle!
 #puts board.to_s
  return board
end
end

def game
  #puts board.to_s
  c = gets.to_i
  k = board.at(c)
  if k == 5
    puts "Congratulations"
  else
    puts "Try again"
  end
end

end

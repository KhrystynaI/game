require './asci_drawer'

class Game
  include AsciDrawer

  attr_accessor :board

  def initialize
    @board = load_random_values
  end

  def play(&bloc)
    draw_cells
    puts "Please, choose number between 0 and 5"
    yield
    raffle
  end

  private

  def raffle
    position = gets.to_i

    digit = board.at(position)
    if digit == 5
      puts "Congratulations"
    else
      puts "Try again"
    end
  end

  def load_random_values
    aboard = Array.new(6) { rand(1..10) }

    bboard = Array.new(6) { rand(1..10) }

    cboard = aboard | bboard

    board = cboard.slice!(0..5)

    # toss out nil
    if board.include? nil
      board.compact!
      board.push(1, 2, 3, 4, 5, 6, 7, 8, 9).uniq!
      board.slice!(6..-1)
    end

    ensure_winner_value_on(board)
  end

  def ensure_winner_value_on(board)
    if board.include? 5
      return board
    else
      board[1] = 5

      board.shuffle!
      return board
    end
  end

end

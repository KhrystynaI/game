require 'active_support/inflector'
#require 'active_support/core_ext/string'

class Game

  attr_accessor :board

  def initialize
    @board = load_random_values
  end

  def play(&bloc)
    choose_game_looks
    puts "Please, choose number between 0 and 5"
    yield
    raffle
  end

  def drawers
    @drawers ||= load_drawers
  end

  private

  def load_drawers
    files = Dir['./drawers/*_drawer.rb']

    files.each {|file| require file}

    files.map do |file|
      drawer_class_name = ActiveSupport::Inflector.camelize(File.basename(file, '.rb'))
      drawer_class_name.constantize
    end
  end

  def print_drawer_options
    drawers.each_with_index do |drawer, i|
      puts "To select #{drawer.name} - press #{i}"
    end
  end

  def include_drawer(drawer_index)
    drawer = drawers[drawer_index]
    self.class.include drawer
  end

  def choose_game_looks
    puts "You can choose game's look"
    print_drawer_options
    drawer_index = gets.to_i
    include_drawer(drawer_index)
    draw_cells
  end


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

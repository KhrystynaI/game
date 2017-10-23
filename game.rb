class Game

  attr_reader :cells

  def initialize
    @cells = (1..6).map{ rand(9) + 1 }
  end
end

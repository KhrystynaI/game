require './game'

RSpec.describe Game do

  it 'contains 6 cells' do
    game = Game.new
    expect(game.cells.count).to eq(6)
  end

  describe "#cells" do

    it 'contains different values for every new Game' do
      game1 = Game.new
      game2 = Game.new

      expect(game1.cells).to_not eql game2.cells
    end

    it 'each cell contains value from 1 to 10' do
      game = Game.new
      game.cells.each do | cell |
        expect(cell).to be >= 1
        expect(cell).to be <= 10
      end
    end

    it 'does not contain duplicate values' do
      game = Game.new
      expect(game.cells.uniq.count).to eql game.cells.count
    end

  end
end





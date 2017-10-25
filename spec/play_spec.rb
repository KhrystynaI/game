require './game'
require 'spec_helper'

RSpec.describe Game do

  describe "#load_random" do
    it 'contains 6 cells' do
      bord = Game.new
      20.times
      expect(bord.board.count).to eq(6)
    end

    it 'contains different values for every new Game' do
      game1 = Game.new
      game2 = Game.new
      expect(game1.board).to_not eql game2.board
    end

    it 'each cell contains value from 1 to 10' do
      game = Game.new
      game.board.each do |board|
        expect(board).to be >= 1
        expect(board).to be <= 10
      end
    end

    it 'does not contain duplicate values' do
      game = Game.new
      20.times
      expect(game.board.uniq.count).to eql game.board.count
    end

    it 'does not contain nil values' do
      game = Game.new
      expect(game.board.include? nil).to be false
    end

    it 'does contain "5" like value' do
      game = Game.new
      expect(game.board.include? 5).to be true
    end

  end

end

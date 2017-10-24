require './modboard'
require './play'
require 'spec_helper'


RSpec.describe Play do

describe "#load_random" do
  it 'contains 6 cells' do
    bord = Play.new
    20.times
    expect(bord.board.count).to eq(6)
  end

  it 'contains different values for every new Play' do
        game1 = Play.new
        game2 = Play.new
        expect(game1.board).to_not eql game2.board
  end

  it 'each cell contains value from 1 to 10' do
       game = Play.new
       game.board.each do | board |
         expect(board).to be >= 1
         expect(board).to be <= 10
       end
end

it 'does not contain duplicate values' do
   game = Play.new
   20.times
   expect(game.board.uniq.count).to eql game.board.count
end

it 'does not contain nil values' do
  game = Play.new
  expect(game.board.include? nil).to be false
end

it 'does contain "5" like value' do
  game = Play.new
  expect(game.board.include? 5).to be true
end

end

end

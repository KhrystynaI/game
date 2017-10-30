require './game'
require 'spec_helper'

RSpec.describe Game do

  describe "#drawers" do
    it 'must have array'do
     game = Game.new
      expect(game.drawers).to be_an_instance_of(Array)
        end

  end


end

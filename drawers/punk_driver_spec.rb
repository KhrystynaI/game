require_relative 'punk_drawer'

RSpec.describe PunkDrawer do
  describe '#draw_cells' do
    it 'is executed without error' do
      object = Object.new
      object.extend PunkDrawer
      expect{object.draw_cells}.to_not raise_error
    end
  end
end

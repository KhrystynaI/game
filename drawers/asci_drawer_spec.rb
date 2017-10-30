require_relative 'asci_drawer'

RSpec.describe AsciDrawer do
  describe '#draw_cells' do
    it 'is executed without error' do
      object = Object.new
      object.extend AsciDrawer
      expect{object.draw_cells}.to_not raise_error
    end
  end
end

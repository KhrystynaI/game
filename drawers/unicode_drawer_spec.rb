require_relative 'unicode_drawer'

RSpec.describe UnicodeDrawer do
  describe '#draw_cells' do
    it 'is executed without error' do
      object = Object.new
      object.extend UnicodeDrawer
      expect{object.draw_cells}.to_not raise_error
    end
  end
end

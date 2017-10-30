require 'spec_helper'
require 'active_support/inflector'

RSpec.describe 'Available Drawers' do
  read_drawers = lambda do
    files = Dir['./drawers/*_drawer.rb']

    files.each { |file| require file }

    files.map do |file|
      drawer_class_name = ActiveSupport::Inflector.camelize(File.basename(file, '.rb'))
      drawer_class_name.constantize
    end
  end

  drawers = read_drawers.call

  drawers.each do |drawer|
    context drawer.to_s do
      it "an instance extended with drawer should run #draw_cells without errors" do
        object = Object.new
        object.extend drawer
        expect { object.draw_cells }.to_not raise_error
      end
    end
  end

  it 'drawer list should not be empty' do
    expect(drawers).to_not be_empty
  end

end

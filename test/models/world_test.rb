require 'test_helper'

class WorldTest < Test::Unit::TestCase
  context 'a world' do
    should 'perform' do
      $world.perform
    end
  end
end

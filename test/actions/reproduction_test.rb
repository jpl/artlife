require 'test_helper'

class Actions::ReproductionTest < Test::Unit::TestCase
  context 'with two humans' do
    setup do
      @john = Human.new('H')
      @daisy = Human.new('F')
    end

    should 'reproduce' do
      @daisy.reproduce_with(@john)
      assert_equal 3, $world.humanity.size
    end
  end
end

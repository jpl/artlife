require 'test_helper'

class HumanTest < Test::Unit::TestCase
  context 'a male human' do
    setup do
      @male = Human.new('M')
    end

    should 'like woman human' do
      @woman = Human.new('F')
      assert @male.love?(@woman)
    end
  end
end

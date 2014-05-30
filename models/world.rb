require 'set'
require 'eventmachine'

class World
  attr_reader :humanity

  def initialize
    @humanity = Set.new
  end

  def perform
    100.times do
      @humanity << Human.new('H')
    end

    EM::run do
      EM::Iterator.new(1..100).each do |num, iter_1|
        puts num

        EM::Iterator.new(self.humanity).each do |human, iter_2|
          human.live
          iter_2.next
        end

        iter_1.next
      end
    end
  end
end

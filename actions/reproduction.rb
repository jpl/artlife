module Actions::Reproduction
  def reproduce_with(a_man)
    raise 'Should not reproduce' if self.male?

    conception = Conception.new(self, a_man)
    conception.perform
  end

  class Conception
    def initialize(a_woman, a_man)
      @woman = a_woman
      @man = a_man
    end

    def perform
      $world.humanity << Human.new(sex)
    end

    def sex
      if rand(2)
        'M'
      else
        'F'
      end
    end
  end
end

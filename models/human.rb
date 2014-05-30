class Human
  include Actions::Reproduction
  include Actions::Live
  attr_reader :sex
  attr_reader :age

  def initialize(a_sex)
    @sex = a_sex
    @age = 0
    $world.humanity << self
  end

  def age=(value)
    @age = value
    self.die if value > 80
  end

  def male?
    self.sex == 'M'
  end

  def love?(a_human)
    self.sex != a_human.sex
  end
end

module Actions::Live
  def live
    puts "#{self.inspect} is living"
    self.age += 1
  end

  def die
    $world.humanity.delete(self)
    puts "#{self.inspect} died"
  end
end

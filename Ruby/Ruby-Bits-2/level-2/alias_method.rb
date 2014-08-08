# Before

class Library
  attr_accessor :games

  def each(&block)
    games.each(&block)
  end
end

# After

class Library
  attr_accessor :games

  def each(&block)
    games.each(&block)
  end
  alias_method :each_game, :each
end

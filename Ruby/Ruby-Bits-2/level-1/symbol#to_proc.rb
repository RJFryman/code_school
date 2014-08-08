# Before

class Library
  attr_accessor :games

  def initialize(games)
    @games = games
  end

  def names
    games.map { |game| game.name }
  end
end

# After

class Library
  attr_accessor :games

  def initialize(games)
    @games = games
  end

  def names
    games.map(&:name)
  end
end

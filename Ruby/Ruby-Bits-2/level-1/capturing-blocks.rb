# Before

class Library
  attr_accessor :games

  def initialize(games)
    @games = games
  end

  def each
    games.each do |game|
      yield game
    end
  end
end

# After

class Library
  attr_accessor :games

  def initialize(games)
    @games = games
  end

  def each(&block)
    games.each(&block)
  end
end

# Before

class Library
  attr_accessor :games

  def initialize(games)
    @games = games
  end

  def each(&block)
    games.each do |game|
      block.call(game)
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

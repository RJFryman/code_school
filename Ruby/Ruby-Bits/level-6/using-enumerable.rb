# Before

class Library
  attr_accessor :games

  def initialize(games = [])
    self.games = games
  end

  def each

  end
end

# After

class Library
  attr_accessor :games
  include Enumerable

  def initialize(games = [])
    self.games = games
  end

  def each
    games.each { |game| yield game}
  end
end

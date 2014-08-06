# Before

class Library
  attr_accessor :games

  def initialize(games = [])
    self.games = games
  end

  def list
    for i in 0...(games.length)
      game = games[i]
      puts game.name
    end
  end
end

# After

class Library
  attr_accessor :games

  def initialize(games = [])
    self.games = games
  end

  def list
    games.each { |game| puts game.name }
  end
end

# Before

class Library
  attr_accessor :games

  def initialize(games)
    self.games = games
  end

  def has_game?(search_name)
    for game in games
      return true if game.name == search_name
    end
    false
  end
end

# After

class Library
  attr_accessor :games

  def initialize(games)
    self.games = games
  end

  def has_game?(search_name)
    for game in games
      return true if game == search_name
    end
    false
  end
end

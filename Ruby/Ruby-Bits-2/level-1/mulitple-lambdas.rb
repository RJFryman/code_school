# Before

class Library
  attr_accessor :games

  def initialize(games)
    @games = games
  end

  def exec_game(name, action)
    game = games.detect { |game| game.name == name }
    action.call(game)
  end
end

# After

class Library
  attr_accessor :games

  def initialize(games)
    @games = games
  end

  def exec_game(name, action, error)
    game = games.detect { |game| game.name == name }
     begin
      action.call(game)
    rescue
      error.call
    end
  end
end

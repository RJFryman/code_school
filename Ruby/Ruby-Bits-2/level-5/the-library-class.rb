# Before

class Library

end

# After

class Library
  def initialize
    @games = []
  end

  def add_game(game)
    @games << game
  end
end

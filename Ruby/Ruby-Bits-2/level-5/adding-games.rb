# Before

LIBRARY = Library.new

def add_game(name)

end

# After

LIBRARY = Library.new

def add_game(name)
  game = Game.new(name)
  LIBRARY.add_game(game)
end

# Before
# Game.rb

class Game
  attr_reader :name

  def initialize(name)
    @name = name
    @year = nil
    @system = nil
  end

  # Add methods to store year and system
end

# Game_DSL.rb

LIBRARY = Library.new

def add_game(name)
  game = Game.new(name)
  # Capture the block and call it here
  LIBRARY.add_game(game)
end

# After
# Game.rb

class Game
  attr_reader :name

  def initialize(name)
    @name = name
    @year = nil
    @system = nil
  end

   def year(value)
    @year = value
  end

  def system(value)
    @system = value
  end
end

# Game_DLS.rb

LIBRARY = Library.new

def add_game(name, &block)
  game = Game.new(name)
  game.instance_eval(&block)
  LIBRARY.add_game(game)
end

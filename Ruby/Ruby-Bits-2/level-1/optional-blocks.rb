# Before

class Library
  attr_accessor :games

  def initialize(games)
    @games = games
  end

  def list
    games.each do |game|

    end
  end
end

# After

class Library
  attr_accessor :games

  def initialize(games)
    @games = games
  end

  def list
    if block_given?
      games.each { |game| puts yield game }
    else
      games.each { |game| puts game.name }
    end
  end
end

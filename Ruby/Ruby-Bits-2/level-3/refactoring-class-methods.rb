# Before

class Game
  def Game.find_by_title(name)
  end
end

# After

class Game
  def self.find_by_title(name)
  end
end

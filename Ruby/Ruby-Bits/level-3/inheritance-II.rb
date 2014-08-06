# Before

class ArcadeGame < Game
  attr_accessor :weight
end
class ConsoleGame < Game
end

# After

class ArcadeGame < Game
  attr_accessor :weight
  def initialize(name, options = {})
    @weight = options[:weight]
    super(name, options)
  end
end
class ConsoleGame < Game
end

# Before

class Game
  attr_accessor :name, :year, :system

  def initialize(name, year, system)
    self.name = name
    self.year = year
    self.system = system
  end
end

# After

Game = Struct.new(:name, :year, :system)

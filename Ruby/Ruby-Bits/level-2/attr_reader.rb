# Before

class Game
  attr_accessor :name, :year, :system

  def initialize(name, options={})
    @name = name
    @year = options[:year]
    @system = options[:system]
  end
end

# After

class Game
  attr_accessor :name, :year, :system
  attr_reader :created_at

  def initialize(name, options={})
    @name = name
    @year = options[:year]
    @system = options[:system]
    @created_at = Time.now
  end
end

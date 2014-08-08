# Before

class Library
  attr_accessor :games

  def each(&block)
    games.each(&block)
  end

  def map(&block)
    games.map(&block)
  end

  def select(&block)
    games.select(&block)
  end
end

# After

class Library
  attr_accessor :games

  [:each, :map, :select].each do |method|
    define_method(method) do |&block|
      games.send(method, &block)
    end
  end
end

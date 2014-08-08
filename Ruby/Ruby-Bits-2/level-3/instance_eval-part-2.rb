# Before

class Game
  def initialize
  end

  def owner(name=nil)
    if name
      @owner = name
    else
      @owner
    end
  end
end

# After

class Game
  def initialize(&block)
    instance_eval(&block) if block_given?
  end

  def owner(name=nil)
    if name
      @owner = name
    else
      @owner
    end
  end
end

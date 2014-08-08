# Before

class Library
  def initialize(console)
    @manager = console
  end

  def method_missing(name, *args)

  end
end

# After

class Library
  def initialize(console)
    @manager = console
  end

  def method_missing(name, *args)
    @manager.send(name, *args)
  end
end

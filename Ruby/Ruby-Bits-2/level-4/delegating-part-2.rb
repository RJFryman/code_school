# Before

class Library
  def initialize(console)
    @manager = console
  end

  def method_missing(name, *args)
    @manager.send(name, *args)
  end
end

# After

class Library
  def initialize(console)
    @manager = console
  end

  def method_missing(name, *args)
     if name.to_s =~ /atari/
       @manager.send(name, *args)
     else
       super
     end
  end
end

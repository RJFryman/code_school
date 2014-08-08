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

require 'delegate'

class Library < SimpleDelegator
  def initialize(console)
    super(console)
  end
end

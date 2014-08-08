# Before

class Game
  attr_reader :name, :tags

  def initialize(name)
    @name = name
    @year = nil
    @system = nil
    @tags = []
  end

  def year(value)
    @year = value
  end

  def system(value)
    @system = value
  end

  def print_details
    puts "#{@name} - #{@year} (#{@system})"
  end

  def play
  end

  def capture_screenshot
  end

  def method_missing(method_name, *args)
    @tags << method_name.to_s
  end
end

# After

class Game
  attr_reader :name, :tags

  def initialize(name)
    @name = name
    @year = nil
    @system = nil
    @tags = []
  end

  def year(value)
    @year = value
  end

  def system(value)
    @system = value
  end

  def print_details
    puts "#{@name} - #{@year} (#{@system})"
  end

  def play
    if @system == "SNES"
      raise "No emulator for SNES games"
    else
      puts "Starting #{@name}"
    end
  end

  def capture_screenshot
  end

  def method_missing(method_name, *args)
    @tags << method_name.to_s
  end
end

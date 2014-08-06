# Before

class Game
  attr_accessor :name, :year, :system
  attr_reader :created_at

  def initialize(name, options={})
    self.name = name
    self.year = options[:year]
    self.system = options[:system]
    @created_at = Time.now
  end

  def play
    begin
      emulator = Emulator.new(system)
      emulator.play(self)
    rescue Exception => e
      puts "Emulator failed: #{e}"
    end
  end

  def screenshot
    begin
      emulator = Emulator.new(system)
      emulator.start(self)
      emulator.screenshot
    rescue Exception => e
      puts "Emulator failed: #{e}"
    end
  end
end

# After

class Game
  attr_accessor :name, :year, :system
  attr_reader :created_at

  def initialize(name, options={})
    self.name = name
    self.year = options[:year]
    self.system = options[:system]
    @created_at = Time.now
  end

  def play
    emulate do |emulator|
      emulator.play(self)
    end
  end

  def screenshot
    emulate do |emulator|
      emulator.start(self)
      emulator.screenshot
    end
  end
  private

  def emulate
   begin
      emulator = Emulator.new(system)
      yield emulator
    rescue Exception => e
      puts "Emulator failed: #{e}"
    end
  end
end

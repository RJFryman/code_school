# Before

class Game
  SYSTEMS = ['SNES', 'PS1', 'Genesis']

  attr_accessor :name, :year, :system

  def runs_on_snes?
    self.system == 'SNES'
  end

  def runs_on_ps1?
    self.system == 'PS1'
  end

  def runs_on_genesis?
    self.system == 'Genesis'
  end
end

# After

class Game
  SYSTEMS = ['SNES', 'PS1', 'Genesis']

  attr_accessor :name, :year, :system

  SYSTEMS.each do |system|
    define_method "runs_on_#{system.downcase}?" do
      self.system == system
    end
  end
end

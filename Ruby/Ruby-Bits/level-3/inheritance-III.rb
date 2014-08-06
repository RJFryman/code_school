# Before

class ConsoleGame < Game

end

# After

class ConsoleGame < Game
  def to_s
    "#{self.name} - #{self.system}"
  end
end
 

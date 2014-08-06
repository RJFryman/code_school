# Before

game = Game.new("contra")
game.lend_to_friend("Gregg")

# After

class Game
  include GameUtils
end
game = Game.new("contra")
game.lend_to_friend("Gregg")

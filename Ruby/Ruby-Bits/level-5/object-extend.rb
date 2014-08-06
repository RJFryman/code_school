# Before

game = Game.new("Contra")
game.play

# After

game = Game.new("Contra")
game.extend(Playable)
game.play

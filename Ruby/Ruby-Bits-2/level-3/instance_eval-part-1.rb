# Before

contra_game = Game.new('Contra')

# After

contra_game = Game.new('Contra')
contra_game.instance_eval do
  self.owner = 'Alice'
end

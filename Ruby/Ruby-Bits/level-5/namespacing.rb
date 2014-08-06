# Before

def lend_to_friend(game, friend_email)
end

game = Game.new("Contra")
lend_to_friend(game, "gregg@codeschool.com")

# After

module GameUtils
  def self.lend_to_friend(game, friend_email)
	end
end

game = Game.new("Contra")
GameUtils.lend_to_friend(game, "gregg@codeschool.com")

# Before

def last_games(games, index)

end
games = ["Super Mario Bros.", "Contra", "Metroid", "Mega Man 2"]
puts last_games(games, 0)

# After

require 'active_support/all'
def last_games(games, index)
  games.from(index)
end
games = ["Super Mario Bros.", "Contra", "Metroid", "Mega Man 2"]
puts last_games(games, 1)

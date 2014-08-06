# Before

class Game
end

Game.find_all_from_user("Gregg")

# After

module Searchable
  include GameUtils
end
class Game
  extend Searchable
end

Game.find_all_from_user("Gregg")

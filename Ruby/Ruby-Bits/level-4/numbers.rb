# Before

def describe_count(games)
  if games.empty?
    "You have no games"
  elsif (games.length % 2) == 0
    "You have an even number of games"
  elsif (games.length % 2) != 0
    "You have an odd number of games"
  end
end

games = ["Super Mario Bros.", "Contra", "Metroid", "Mega Man 2"]
puts describe_count(games)

# After

require 'active_support/all'
def describe_count(games)
  return "You have no games" if games.empty?
  return "You have an even number of games" if games.count.even?
  return "You have an odd number of games" if games.count.odd?
end

games = ["Super Mario Bros.", "Contra", "Metroid", "Mega Man 2"]
puts describe_count(games)

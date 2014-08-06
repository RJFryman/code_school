# Before

def anniversary(game, years)

end

game = {
  name: 'Contra',
  release: DateTime.new(1987, 2, 20, 0, 0, 0)
}
puts anniversary(game, 20)

# After

require 'active_support/all'
def anniversary(game, years)
  game[:release].advance(years:years)
end

game = {
  name: 'Contra',
  release: DateTime.new(1987, 2, 20, 0, 0, 0)
}
puts anniversary(game, 20)

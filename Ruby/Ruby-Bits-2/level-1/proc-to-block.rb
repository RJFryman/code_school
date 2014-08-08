# Before

library = Library.new(GAMES)
library.each { |game| puts "#{game.name} (#{game.system}) - #{game.year}" }

# After

game_proc = lambda { |game| puts "#{game.name} (#{game.system}) - #{game.year}" }
library = Library.new(GAMES)
library.each(&game_proc)

# Before

library = Library.new(GAMES)
print_details = Proc.new do |game|
  puts "#{game.name} (#{game.system}) - #{game.year}"
end
library.exec_game('Contra', print_details)

# After

library = Library.new(GAMES)
print_details = lambda do |game|
  puts "#{game.name} (#{game.system}) - #{game.year}"
end
library.exec_game('Contra', print_details)

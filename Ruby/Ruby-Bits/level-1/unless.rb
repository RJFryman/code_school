# Before
games = ["Super Mario Bros.", "Contra", "Metroid", "Mega Man 2"]
if !games.empty?
  puts "Games in your vast collection: #{games.count}"
end

# After
games = ["Super Mario Bros.", "Contra", "Metroid", "Mega Man 2"]
unless games.empty?
  puts "Games in your vast collection: #{games.count}"
end

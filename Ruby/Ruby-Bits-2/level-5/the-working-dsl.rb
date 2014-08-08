# Before

add_game "Civilization" do
  system "PC"
  year 1991
end

# After

add_game "Civilization" do
  system "PC"
  year 1991
end

add_game "Contra" do
  system "NES"
  year 1987
end

with_game("Contra") do
  print_details
  play
  capture_screenshot
end

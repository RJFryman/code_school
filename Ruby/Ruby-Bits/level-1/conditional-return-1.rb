# Before

search = "Contra"
games = ["Super Mario Bros.", "Contra", "Metroid", "Mega Man 2"]
search_index = games.find_index(search)
if search_index
  search_result = "Game #{search} found: #{games[search_index]} at index #{search_index}."
else
  search_result = "Game #{search} not found."
end
puts search_result

# After

search = "Contra"
games = ["Super Mario Bros.", "Contra", "Metroid", "Mega Man 2"]
search_index = games.find_index(search)
search_result = if search_index
  "Game #{search} found: #{games[search_index]} at index #{search_index}."
else
  "Game #{search} not found."
end
puts search_result

# Before

def search_index(games, search_term)
  search_index = games.find_index(search_term)

  if search_index
    search_index
  else
    "Not Found"
  end
end

# After

def search_index(games, search_term)
  search_index = games.find_index(search_term) || "Not Found"
end

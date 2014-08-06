# Before

def new_game(name, year, system)
  {
    name: name,
    year: year,
    system: system
  }
end
game = new_game("Street Figher II", nil, nil)

# After

def new_game(name, year=nil, system=nil)
  {
    name: name,
    year: year,
    system: system
  }
end
game = new_game("Street Figher II")

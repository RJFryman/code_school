# Before

def new_game(name, year=nil, system=nil)
  {
    name: name,
    year: year,
    system: system
  }
end
game = new_game("Street Figher II", "SNES", 1992)

# After

def new_game(name, options = {})
  {
    name: name,
    year: options[:year],
    system: options[:system]
  }
end
game = new_game("Street Figher II", system: "SNES", year: 1992)

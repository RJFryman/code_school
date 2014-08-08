# Before

class Game
  puts "I am"
end

# After

class Game
  puts "I am inside the #{self} class"
end

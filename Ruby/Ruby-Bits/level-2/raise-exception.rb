# Before

class InvalidGameError < StandardError; end
def new_game(name, options={})
  {
    name: name,
    year: options[:year],
    system: options[:system]
  }
end
begin
  game = new_game(nil)
rescue InvalidGameError => e
  puts "There was a problem creating your new game: #{e.message}"
end

# After

class InvalidGameError < StandardError; end
def new_game(name, options={})
  raise InvalidGameError unless name
  {
    name: name,
    year: options[:year],
    system: options[:system]
  }
end
begin
  game = new_game(nil)
rescue InvalidGameError => e
  puts "There was a problem creating your new game: #{e.message}"
end

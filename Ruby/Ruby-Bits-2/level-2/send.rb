# Before

library = Library.new(GAMES)
library.list
library.emulate("Contra")
game = library.find("Contra")

# After

library = Library.new(GAMES)
library.send(:list)
library.send(:emulate, "Contra")
game = library.send(:find, "Contra")

# Before

library = Library.new(GAMES)
library.list
library.emulate("Contra")

# After

library = Library.new(GAMES)
list_method = library.method(:list)
list_method.call
emulate_method = library.method(:emulate)
emulate_method.call("Contra")

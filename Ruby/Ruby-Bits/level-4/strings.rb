# Before

def convert_title(title)

end

puts convert_title("super mario bros.")

# After

require 'active_support/all'
def convert_title(title)
  title.titleize
end

puts convert_title("super mario bros.")

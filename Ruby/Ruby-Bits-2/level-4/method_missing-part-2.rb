# Before

class Library
  def method_missing(name)
    puts name
  end
end

# After

class Library
  def method_missing(method_name, *args)
    puts "You tried to call #{method_name} with these arguments: #{args}"
  end
end

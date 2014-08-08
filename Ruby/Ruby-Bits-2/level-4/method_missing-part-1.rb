# Before

class Library

end

# After

class Library
 def method_missing(method_name)
    puts method_name
  end
end

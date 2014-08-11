# Before

class Zombie < ActiveRecord::Base
  # insert validation here
end

# After

class Zombie < ActiveRecord::Base
  validates_presence_of :name
end

# Before

class Zombie < ActiveRecord::Base
  # insert validation here
end


# AFter

class Zombie < ActiveRecord::Base
  validates_uniqueness_of :name
end

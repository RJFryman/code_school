# Before

class Zombie < ActiveRecord::Base
  # insert validation here
end

# After

class Zombie < ActiveRecord::Base
  validates :name, presence: true,
                   uniqueness: true
end

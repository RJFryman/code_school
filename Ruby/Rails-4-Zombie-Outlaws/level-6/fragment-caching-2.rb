# Before

class Zombie < ActiveRecord::Base
  belongs_to :weapon
end

# After

class Zombie < ActiveRecord::Base
  belongs_to :weapon, touch: true
end

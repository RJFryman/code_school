# Before

class Weapon < ActiveRecord::Base
end

# After

class Weapon < ActiveRecord::Base
  belongs_to :zombie
end

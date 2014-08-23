# Before

class Zombie < ActiveRecord::Base
  scope :recent, where('killed_on > ?', 2.days.ago)
  scope :outlaws, where(status: 'outlaw')
end

# After

class Zombie < ActiveRecord::Base
  scope :recent, -> {where('killed_on > ?', 2.days.ago)}
  scope :outlaws, -> {where(status: 'outlaw')}
end

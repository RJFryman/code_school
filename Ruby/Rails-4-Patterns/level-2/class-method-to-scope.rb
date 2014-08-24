# Before

class Item < ActiveRecord::Base
  def self.by_name(name)
    where(name: name) if name.present?
  end

  def self.recent
    where('created_on > ?', 2.days.ago)
  end
end

# After

class Item < ActiveRecord::Base
  scope :recent, ->{where('created_on > ?', 2.days.ago)}
  scope :by_name, ->(name){where(name: name) if name.present?}
end

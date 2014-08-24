# Before

class Item < ActiveRecord::Base

  def self.recent
    where('published_on > ?', 2.days.ago)
  end
end

# After

class Item < ActiveRecord::Base

  def self.recent
    where('published_on > ?', 2.days.ago).pluck(:id, :name)
  end
end

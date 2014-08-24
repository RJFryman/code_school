# Before

class Item < ActiveRecord::Base

end

# After

class Item < ActiveRecord::Base
  def self.featured
  	where('rating > ? AND published_on > ?', 5, 2.days.ago)
  end
end

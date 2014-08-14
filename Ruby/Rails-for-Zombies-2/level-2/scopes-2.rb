# Before

class Tweet < ActiveRecord::Base
  scope :recent, order('created_at desc').limit(4)
end

# After

class Tweet < ActiveRecord::Base
  scope :recent, order('created_at desc').limit(4)
  scope :graveyard, where(show_location: true, location: 'graveyard')
end

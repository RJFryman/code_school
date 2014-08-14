# Before

class Tweet < ActiveRecord::Base
end

# AFter

class Tweet < ActiveRecord::Base
  scope :recent, order("created_at desc").limit(4)
end

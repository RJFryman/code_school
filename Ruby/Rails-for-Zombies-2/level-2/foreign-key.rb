# Before

class Tweet < ActiveRecord::Base
  has_one :location
end

class Location < ActiveRecord::Base
  belongs_to :tweet
end

# After

class Tweet < ActiveRecord::Base
  has_one :location, foreign_key: :tweeter_id, dependent: :destroy
end

class Location < ActiveRecord::Base
  belongs_to :tweet, foreign_key: :tweeter_id
end

# Before

class Tweet < ActiveRecord::Base
  has_one :location
end

# After

class Tweet < ActiveRecord::Base
  has_one :location
  delegate :latitude, :longitude, :to => :location,
  :allow_nil => true
end

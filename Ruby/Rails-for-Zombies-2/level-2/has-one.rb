#Before

class Tweet < ActiveRecord::Base
end

class Location < ActiveRecord::Base
end

# AFter

class Tweet < ActiveRecord::Base
  has_one :location
end

class Location < ActiveRecord::Base
  belongs_to :tweet
end

# Before

class Tweet < ActiveRecord::Base
end

# After

class Tweet < ActiveRecord::Base
  before_save :has_location
  def has_location
    self.show_location = true if self.location?
  end
end

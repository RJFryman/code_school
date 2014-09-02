# Before

class Tweet < ActiveRecord::Base
  belongs_to :user
end

# After

class Tweet < ActiveRecord::Base
  belongs_to :user
  def to_s
    "#{self.user.username}: #{self.status}"
  end
end

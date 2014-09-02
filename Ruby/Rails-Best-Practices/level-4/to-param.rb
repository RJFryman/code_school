# Before

class Tweet < ActiveRecord::Base
  belongs_to :user
end

# After

class Tweet < ActiveRecord::Base
  belongs_to :user
  def to_param
    "#{id}-#{user.username}"
  end
end

# Before

class TweetTest < ActiveSupport::TestCase

end

# After

class TweetTest < ActiveSupport::TestCase
  should ensure_length_of(:status).is_at_least(3).is_at_most(140)
end

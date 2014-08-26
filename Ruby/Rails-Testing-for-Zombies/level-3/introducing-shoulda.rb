# Before

class TweetTest < ActiveSupport::TestCase

end

# After

class TweetTest < ActiveSupport::TestCase
  should validate_presence_of(:status)
  should validate_presence_of(:zombie)
end

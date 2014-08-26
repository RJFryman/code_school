# Before

class TweetTest < ActiveSupport::TestCase

end

# After

class TweetTest < ActiveSupport::TestCase
  should validate_numericality_of(:id)
  should validate_uniqueness_of(:id)
end

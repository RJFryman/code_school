# Before

class TweetTest < ActiveSupport::TestCase
  test "invalid without a status" do
    tweet = Tweet.new
  end
end

# After

class TweetTest < ActiveSupport::TestCase
  test "invalid without a status" do
    tweet = Tweet.new
    assert !tweet.valid?, 'not valid without a status'
  end
end

# Before

class TweetTest < ActiveSupport::TestCase
  test "can detect brains" do
    tweet = tweets(:hello_world)
  end
end

# After

class TweetTest < ActiveSupport::TestCase
  test "can detect brains" do
    tweet = tweets(:hello_world)
    tweet.status << ' brains'
    assert tweet.brains?
  end
end

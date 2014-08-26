# Before

class TweetTest < ActiveSupport::TestCase
  test "valid with all attributes" do

  end
end

# After

class TweetTest < ActiveSupport::TestCase
  test "valid with all attributes" do
    zombie = Zombie.new
    tweet = Tweet.new

    tweet.status = "I'm a Zombie"
    tweet.zombie = zombie

    assert tweet.valid?
  end
end

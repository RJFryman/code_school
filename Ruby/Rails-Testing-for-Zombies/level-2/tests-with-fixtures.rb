# Before

class TweetTest < ActiveSupport::TestCase
  test "valid with all attributes" do
    zombie = Zombie.new
    tweet = Tweet.new

    tweet.status = 'I want to eat your brain. <3'
    tweet.zombie = zombie

    assert tweet.valid?, "tweet isn't valid"
  end
end

# After

class TweetTest < ActiveSupport::TestCase
  test "valid with all attributes" do
    zombie = zombies(:ash)
    tweet = tweets(:hello_world)

    assert tweet.valid?, "tweet isn't valid"
  end
end

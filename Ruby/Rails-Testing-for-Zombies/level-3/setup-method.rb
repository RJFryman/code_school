# Before

class TweetTest < ActiveSupport::TestCase
  test "invalid without a status" do
    tweet = tweets(:hello_world)
    tweet.status = nil
    assert !tweet.valid?, "Status is not being Validated"
  end

  test "valid with all attributes" do
    tweet = tweets(:hello_world)
    assert tweet.valid?, "tweet isn't valid"
  end
end

# After

class TweetTest < ActiveSupport::TestCase

def setup
  @tweet = tweets(:hello_world)
end

test "invalid without a status" do
    @tweet.status = nil
    assert !@tweet.valid?, "Status is not being Validated"
  end

  test "valid with all attributes" do
    assert @tweet.valid?, "tweet isn't valid"
  end
end

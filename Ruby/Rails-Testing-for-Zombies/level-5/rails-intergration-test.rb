# Before

class TweetDisplaysStatusTest < ActionDispatch::IntegrationTest
  def setup
    @tweet = tweets(:hello_world)
  end

  test "Tweet page responds successfully" do

  end

  test "Tweet displays status in heading" do

  end
end

# After

class TweetDisplaysStatusTest < ActionDispatch::IntegrationTest
  def setup
    @tweet = tweets(:hello_world)
    get tweet_url(@tweet)
  end

  test "Tweet page responds successfully" do
    assert_response :success
  end

  test "Tweet displays status in heading" do
    assert_select "h1", @tweet.status
  end
end

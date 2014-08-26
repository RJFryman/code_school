# Before

  def setup
    @tweet = tweets(:hello_world)
  end

  test "Tweet displays status in heading" do
    get tweet_url(@tweet)
    assert_select 'h1', @tweet.status
  end
end

# After

class TweetDisplaysStatusTest < ActionDispatch::IntegrationTest
  def setup
    @tweet = tweets(:hello_world)
  end

  test "Tweet displays status in heading" do
    visit tweet_url(@tweet)
    within('h1') do
      assert has_content? @tweet.status
    end
  end
end

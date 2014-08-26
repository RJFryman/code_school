# Before

class CreatingATweetTest < ActionDispatch::IntegrationTest
  def setup
    @zombie = zombies(:ash)
    @tweet_attributes = {tweet: {zombie_id: @zombie.id, status: 'Test tweet'}}
  end

  test "Responds with a redirect to the tweet page" do
    post tweets_url, @tweet_attributes
  end
end

# After

class CreatingATweetTest < ActionDispatch::IntegrationTest
  def setup
    @zombie = zombies(:ash)
    @tweet_attributes = {tweet: {zombie_id: @zombie.id, status: 'Test tweet'}}
  end

  test "Responds with a redirect to the tweet page" do
    post tweets_url, @tweet_attributes
    assert_redirected_to tweet_url(@zombie.tweets.last)
  end
end

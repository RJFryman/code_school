# Before

class TweetTest < ActionDispatch::IntegrationTest
  test "tweet page has zombie link" do

  end
end

# After

class TweetTest < ActionDispatch::IntegrationTest
  test "tweet page has zombie link" do
    zombie = Factory(:zombie)
    tweet = Factory(:tweet, zombie: zombie)
	  visit tweets_url
    click_link tweet.status
    within 'h3' do
      has_content? tweet.zombie.name
    end
  end
end

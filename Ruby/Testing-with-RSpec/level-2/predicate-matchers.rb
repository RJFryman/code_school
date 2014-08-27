# Before

describe Zombie do
  it 'includes a tweet' do
    tweet = Tweet.new
    zombie = Zombie.new(tweets: [tweet])
    zombie.tweets.first.should == tweet
  end
end

# After

describe Zombie do
  it 'includes a tweet' do
    tweet = Tweet.new
    zombie = Zombie.new(tweets: [tweet])
    zombie.tweets.should include(tweet)
  end
end

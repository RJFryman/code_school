# Before

describe Zombie do
  let(:tweet) { Tweet.new }
  subject { Zombie.new(tweets: [tweet]) }

  its(:tweets) { should include(tweet) }
  its(:latest_tweet) { should == tweet }
end

# After

describe Zombie do
  let(:tweet) { Tweet.new }
  let(:zombie) { Zombie.new(tweets: [tweet]) }
  subject{ zombie }
  its(:tweets) { should include(tweet) }
  its(:latest_tweet) { should == tweet }
end

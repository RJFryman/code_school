# Before

describe Tweet do
  it 'without a leading @ symbol should be public' do
    tweet = Tweet.new(status: 'Nom nom nom')
  end
end

# After

describe Tweet do
  it 'without a leading @ symbol should be public' do
    tweet = Tweet.new(status: 'Nom nom nom')
    tweet.should be_public
  end
end

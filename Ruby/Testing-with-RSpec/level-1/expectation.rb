# Before

describe Tweet do
  it 'can set status'
end

# After

describe Tweet do
  it 'can set status'
  tweet = Tweet.new(status: "Nom nom nom")
  tweet.status.should == "Nom nom nom"
end

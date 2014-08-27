# Before

describe Zombie do
  it 'increases the number of tweets' do
    zombie = Zombie.new(name: 'Ash')
    zombie.tweets.new(message: "Arrrgggggggghhhhh")
    zombie.tweets.count.should > 0
  end
end

# After

describe Zombie do
  it 'increases the number of tweets' do
    zombie = Zombie.new(name: 'Ash')
    zombie.tweets.new(message: "Arrrgggggggghhhhh")
    zombie.should have(1).tweets
  end
end

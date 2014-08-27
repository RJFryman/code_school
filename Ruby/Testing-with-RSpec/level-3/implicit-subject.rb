# Before

describe Zombie do
  it 'should not be a genius' do
    zombie = Zombie.new
    zombie.should_not be_genius
  end
end

# After

describe Zombie do
  it { should_not be_genius }
end

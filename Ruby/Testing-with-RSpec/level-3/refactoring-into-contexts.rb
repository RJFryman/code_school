# Before

describe Zombie do
  it { should_not be_genius }
  its(:iq) { should == 0 }

  it "should be_genius with high iq" do
    zombie = Zombie.new(iq: 3)
    zombie.should be_genius
  end

  it 'should have a brains_eaten_count of 1 with high iq' do
    zombie = Zombie.new(iq: 3)
    zombie.brains_eaten_count.should == 1
  end
end

# After

describe Zombie do
  it { should_not be_genius }
  its(:iq) { should == 0 }

  context 'With a iq of 3' do
  	subject { zombie = Zombie.new(iq: 3) }
    it{ should be_genius }
    its(:brains_eaten_count){ should == 1 }
  end
end

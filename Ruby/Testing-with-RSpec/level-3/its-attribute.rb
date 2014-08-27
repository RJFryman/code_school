# Before

describe Zombie do
  it 'should have an iq of zero' do
    subject.iq.should == 0
  end
end

# After

describe Zombie do
  its(:iq) { should == 0 }
end

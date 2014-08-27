# Before

describe Zombie do
  let(:zombie) { Zombie.new }
  before { zombie.iq = 0 }
  subject { zombie }

  it { should be_dummy }

  context 'with a smart zombie' do
    before { zombie.iq = 3 }
    it { should_not be_dummy }
  end
end

# After

describe Zombie do
  let(:zombie) { Zombie.new }
  subject { zombie }

  context 'with a dummy zombie' do
    before { zombie.iq = 0 }
	it { should be_dummy }
  end
  context 'with a smart zombie' do
    before { zombie.iq = 3 }
    it { should_not be_dummy }
  end
end

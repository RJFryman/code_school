# Before

describe Zombie do
  let(:zombie) { Zombie.new }
  subject { zombie }

  it 'is not a dummy zombie' do
    zombie.eat_brains
    zombie.should_not be_dummy
  end

  it 'is a genius zombie' do
    zombie.eat_brains
    zombie.should be_genius
  end
end

# After

describe Zombie do
  let(:zombie) { Zombie.new }
  subject { zombie }
  before { zombie.eat_brains }

  it 'is not a dummy zombie' do
    zombie.should_not be_dummy
  end

  it 'is a genius zombie' do
    zombie.should be_genius
  end
end

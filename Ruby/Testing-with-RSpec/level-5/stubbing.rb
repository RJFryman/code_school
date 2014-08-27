# Before

describe ZombieMailer do
  context '#tweet' do
    let(:zombie) { Zombie.create(email: 'anything@example.org') }
    let(:tweet) { Tweet.create(message: 'Arrrrgggghhhh', zombie: zombie) }

    subject { ZombieMailer.tweet(zombie, tweet) }
    its(:from) { should include('admin@codeschool.com') }
    its(:to) { should include(zombie.email) }
    its(:subject) { should == tweet.message }
  end
end

# After


describe ZombieMailer do
  context '#tweet' do
    let(:zombie) { stub(email: 'anything@example.org') }
    let(:tweet) { stub(message: 'Arrrrgggghhhh') }

    subject { ZombieMailer.tweet(zombie, tweet) }
    its(:from) { should include('admin@codeschool.com') }
    its(:to) { should include(zombie.email) }
    its(:subject) { should == tweet.message }
  end
end

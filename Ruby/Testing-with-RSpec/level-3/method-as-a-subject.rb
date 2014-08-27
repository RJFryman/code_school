# Before

describe Zombie do
  context "with high iq" do
     let(:zombie) { Zombie.new(iq: 3, name: 'Anna') }
     subject { zombie }

     it "should be returned with genius" do
       Zombie.genius.should include(zombie)
     end

     it "should have a genius count of 1" do
       Zombie.genius.count.should == 1
     end
  end
end

# After

describe Zombie do
  context "with high iq" do
    let!(:zombie) { Zombie.create(iq: 3, name: 'Anna') }
    subject { zombie }

    it "should be returned with genius" do
      Zombie.genius.should include(zombie)
    end

    it "should have a genius count of 1" do
      Zombie.genius.count.should == 1
    end
  end
end

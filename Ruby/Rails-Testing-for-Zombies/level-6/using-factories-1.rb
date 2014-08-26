# Before

class TweetTest < ActiveSupport::TestCase
  test "A tweet requires a status" do

  end
end

# After

class TweetTest < ActiveSupport::TestCase
  test "A tweet requires a status" do
    tweet = FactoryGirl.build(:tweet, status: nil)
    assert !tweet.valid?
  end
end

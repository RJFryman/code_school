# Before

class TweetTest < ActiveSupport::TestCase
  test "contains a zombie" do

  end
end

# After

class TweetTest < ActiveSupport::TestCase
  test "contains a zombie" do
    assert_equal zombies(:ash), tweets(:hello_world).zombie
  end
end

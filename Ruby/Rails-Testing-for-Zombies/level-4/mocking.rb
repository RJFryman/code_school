# Before

class TweetTest < ActiveSupport::TestCase
  def setup
    @tweet = tweets(:hello_world)
  end

  test "show_author_summary should call zombie_summary" do

  end
end

# After

class TweetTest < ActiveSupport::TestCase
  def setup
    @tweet = tweets(:hello_world)
  end

  test "show_author_summary should call zombie_summary" do
    @tweet.zombie.expects(:zombie_summary)
    @tweet.show_author_summary
  end
end

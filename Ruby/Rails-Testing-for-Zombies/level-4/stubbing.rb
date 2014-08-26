# Before

class TweetTest < ActiveSupport::TestCase
  def setup
    @tweet = tweets(:hello_world)
  end

  test "show_author_summary should set status to zombie summary" do
    @tweet.show_author_summary
    assert_equal @tweet.zombie.zombie_summary, @tweet.status, 'tweet status does not contain zombie summary'
  end
end

# After

class TweetTest < ActiveSupport::TestCase
  def setup
    @tweet = tweets(:hello_world)
  end

  test "show_author_summary should set status to zombie summary" do
    @tweet.zombie.stubs(:zombie_summary)
    @tweet.show_author_summary
    assert_equal @tweet.zombie.zombie_summary, @tweet.status, 'tweet status does not contain zombie summary'
  end
end

# Before

class TweetTest < ActiveSupport::TestCase
  def setup
    @tweet = tweets(:hello_world)
  end

  test "status_image calls the ZwitPic get_status_image api" do

  end
end

# After

class TweetTest < ActiveSupport::TestCase
  def setup
    @tweet = tweets(:hello_world)
  end

  test "status_image calls the ZwitPic get_status_image api" do
    ZwitPic.expects(:get_status_image).with(@tweet.id)
    @tweet.status_image
  end
end

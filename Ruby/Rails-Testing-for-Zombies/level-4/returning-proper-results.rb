# Before

class TweetTest < ActiveSupport::TestCase
  def setup
    @tweet = tweets(:hello_world)
  end

  test "status_image returns a properly formated HTML image element with alt and src" do

  end
end

# After

class TweetTest < ActiveSupport::TestCase
  def setup
    @tweet = tweets(:hello_world)
  end

  test "status_image returns a properly formated HTML image element with alt and src" do
    ZwitPic.stubs(:get_status_image).with(@tweet.id).returns({name: 'Hello brains', url: 'http://zwitpic.com/2.jpg'})
    assert_equal "<img src='http://zwitpic.com/2.jpg' alt='Hello brains' />", @tweet.status_image
  end
end

# Before

class TweetTest < ActiveSupport::TestCase
  def setup
    @tweet = tweets(:hello_world)
  end

  test "status_image returns a properly formated HTML image element with alt and src" do
    ZwitPic.stubs(:get_status_image).with(@tweet.id).returns({name: 'Yummy brain I ate last night', url: 'http://zwitpic.com/2.jpg'})
    assert_equal "<img src='http://zwitpic.com/2.jpg' alt='Yummy brain I ate last night' />", @tweet.status_image
  end
end

# After

class TweetTest < ActiveSupport::TestCase
  def setup
    @tweet = tweets(:hello_world)
  end

  test "status_image returns a properly formated HTML image element with alt and src" do
    obj = stub(name: 'Yummy brain I ate last night', url: 'http://zwitpic.com/2.jpg')
    ZwitPic.stubs(:get_status_image).with(@tweet.id).returns(obj)
    assert_equal "<img src='http://zwitpic.com/2.jpg' alt='Yummy brain I ate last night' />", @tweet.status_image
  end
end

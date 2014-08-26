# Before
# test/models/tweet_test.rb

class TweetTest < ActiveSupport::TestCase
  def setup
    @tweet = tweets(:hello_world)
  end

  def assert_attribute_is_validated(model, attribute)
    model.assign_attributes(attribute => nil)
    assert !model.valid?, "#{attribute.to_s} is not being validated"
  end

  #you don't need to touch this
  test "invalid without a status" do
    assert_attribute_is_validated @tweet, :status
  end

  #you don't need to touch this
  test "invalid without a zombie" do
    assert_attribute_is_validated @tweet, :zombie
  end
end

# test/test_helper.rb

class ActiveSupport::TestCase

end

# After
# test/models/tweet_test.rb

class TweetTest < ActiveSupport::TestCase
  def setup
    @tweet = tweets(:hello_world)
  end

  #you don't need to touch this
  test "invalid without a status" do
    assert_attribute_is_validated @tweet, :status
  end

  #you don't need to touch this
  test "invalid without a zombie" do
    assert_attribute_is_validated @tweet, :zombie
  end
end

# test/test_helper.rb

class ActiveSupport::TestCase
  def assert_attribute_is_validated(model, attribute)
    model.assign_attributes(attribute => nil)
    assert !model.valid?, "#{attribute.to_s} is not being validated"
  end
end

# Before

class TweetTest < ActiveSupport::TestCase

  def setup
    @tweet = tweets(:hello_world)
  end

  # Don't change this, use it to refactor the tests below.
  def assert_attribute_is_validated(model, attribute)
    # This line sets the specified attribute to nil
    model.assign_attributes(attribute => nil)
    assert !model.valid?, "#{attribute.to_s} is not being validated"
  end

  test "invalid without a status" do
    @tweet.status = nil
    assert !@tweet.valid?, "Status is not being Validated"
  end

  test "invalid without a zombie" do
    @tweet.zombie = nil
    assert !@tweet.valid?, "zombie is not being Validated"
  end
end

# After

class TweetTest < ActiveSupport::TestCase

  def setup
    @tweet = tweets(:hello_world)
  end

  # Don't change this, use it to refactor the tests below.
  def assert_attribute_is_validated(model, attribute)
    # This line sets the specified attribute to nil
    model.assign_attributes(attribute => nil)
    assert !model.valid?, "#{attribute.to_s} is not being validated"
  end

  test "invalid without a status" do
    assert_attribute_is_validated(@tweet, :status)
  end

  test "invalid without a zombie" do
    assert_attribute_is_validated(@tweet, :zombie)
  end
end

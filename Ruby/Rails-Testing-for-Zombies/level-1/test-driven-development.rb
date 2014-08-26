# Before

class MultipleTest < Test::Unit::TestCase
  def test_multiple_of

  end
end

# After

class MultipleTest < Test::Unit::TestCase
  def test_multiple_of
    assert Multiple.multiple_of?(10,5)
  end
end

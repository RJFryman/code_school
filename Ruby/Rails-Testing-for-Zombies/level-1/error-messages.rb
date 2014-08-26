# Before

class ConditionalTest < Test::Unit::TestCase
  def test_one_greater_than_zero
    assert 0 > 1
  end
end

# After

class ConditionalTest < Test::Unit::TestCase
  def test_one_greater_than_zero
    assert 0 > 1, "One is not greater than zero"
  end
end

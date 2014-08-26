# Before

class ZombifierTest < Test::Unit::TestCase
  def test_zombify_upcase

  end
end

# After

class ZombifierTest < Test::Unit::TestCase
  def test_zombify_upcase
    z = Zombifier.new("Hello world").zombify
    assert_equal "HELLO WORLD BRAINS", z
  end
end

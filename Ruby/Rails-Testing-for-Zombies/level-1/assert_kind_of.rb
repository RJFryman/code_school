# Before

class ZombifierTest < Test::Unit::TestCase
  def test_zombify_returns_a_string
    z = Zombifier.new('I like knees')

  end
end

# After

class ZombifierTest < Test::Unit::TestCase
  def test_zombify_returns_a_string
    z = Zombifier.new('I like knees')
    assert_kind_of(String, z.zombify)
  end
end

# Before

class ZombifierTest < Test::Unit::TestCase
  def test_zombify_returns_something
    z = Zombifier.new('make me a zombie')

  end
end

# After

class ZombifierTest < Test::Unit::TestCase
  def test_zombify_returns_something
    z = Zombifier.new('make me a zombie')
    assert_not_nil z.zombify
  end
end

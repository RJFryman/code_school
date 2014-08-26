# Before

class ZombifierTest < Test::Unit::TestCase
  def test_brains_in_zombify_raises_error
    z = Zombifier.new('BRAINS')

  end
end

# After

class ZombifierTest < Test::Unit::TestCase
  def test_brains_in_zombify_raises_error
    z = Zombifier.new('BRAINS')
    assert_raise(RuntimeError) {z.zombify}
  end
end

# Before

class ZombifierTest < Test::Unit::TestCase
  def test_zombify_brains
    z = Zombifier.new('I love your arms')

  end
end

# After

class ZombifierTest < Test::Unit::TestCase
  def test_zombify_brains
    z = Zombifier.new('I love your arms')
    assert_match /BRAINS/, z.zombify
  end
end

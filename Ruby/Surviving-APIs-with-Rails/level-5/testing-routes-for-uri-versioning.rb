# Before

class RoutesTest < ActionDispatch::IntegrationTest
  test 'routes to proper versions' do
    # your code here
  end
end

# After

class RoutesTest < ActionDispatch::IntegrationTest
  test 'routes to proper versions' do
    assert_generates '/v1/zombies', { controller: 'v1/zombies', action: 'index' }
    assert_generates '/v2/zombies', { controller: 'v2/zombies', action: 'index' }
  end
end

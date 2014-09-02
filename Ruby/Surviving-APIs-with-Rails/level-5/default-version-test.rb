# Before

class RoutesTest < ActionDispatch::IntegrationTest
  test 'defaults to v2' do
    assert_generates '', # Task 1
      { controller: '', action: '' } # Task 2
  end
end

# After

class RoutesTest < ActionDispatch::IntegrationTest
  test 'defaults to v2' do
    assert_generates '/zombies',
      { controller: 'v2/zombies', action: 'index' } 
  end
end

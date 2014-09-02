# Before

class ZombiesWithIpTest < ActionDispatch::IntegrationTest
  setup { @ip = '192.168.1.12' }

  test '/v1 returns ip and v1' do
    get '/v1/zombies', {}, { '' => ... }
    assert_equal 200, response.status
    assert_equal "#{@ip} and version one", response.body
  end

  test '/v2 returns ip and v2' do
    get '/v2/zombies', {}, { '' => ... }
    assert_equal 200, response.status
    assert_equal "#{@ip} and version two", response.body
  end
end

# After

class ZombiesWithIpTest < ActionDispatch::IntegrationTest
  setup { @ip = '192.168.1.12' }

  test '/v1 returns ip and v1' do
    get '/v1/zombies', {}, { 'REMOTE_ADDR' => @ip }
    assert_equal 200, response.status
    assert_equal "#{@ip} and version one", response.body
  end

  test '/v2 returns ip and v2' do
    get '/v2/zombies', {}, { 'REMOTE_ADDR' => @ip }
    assert_equal 200, response.status
    assert_equal "#{@ip} and version two", response.body
  end
end

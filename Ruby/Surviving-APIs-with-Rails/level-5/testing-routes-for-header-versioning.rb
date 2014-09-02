# Before

class ListingZombiesTest < ActionDispatch::IntegrationTest
  test 'show zombie from API version 1' do
    get '/zombies/1', {}, { '' => '' }
    assert_equal 200, response.status
  end
end

# After

class ListingZombiesTest < ActionDispatch::IntegrationTest
  test 'show zombie from API version 1' do
    get '/zombies/1', {}, { 'Accept' => 'application/vnd.zombies.v1+json' }
    assert_equal 200, response.status
    assert_equal Mime::JSON, response.content_type
    message = json(response.body)
    assert_equal "This is version one", json(response.body)[:message]
  end
end

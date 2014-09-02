# Before

class ListingZombiesTest < ActionDispatch::IntegrationTest
  test 'invalid authentication responds with proper status code' do
    get '/zombies'
  end
end

# After

class ListingZombiesTest < ActionDispatch::IntegrationTest
  test 'invalid authentication responds with proper status code' do
    get '/zombies', {}, { 'Authorization' => '' }
    assert_equal 401, response.status
    assert_equal Mime::HTML, response.content_type
  end
end

# Before

class ListingHumansTest < ActionDispatch::IntegrationTest
  test 'returns humans in JSON' do
  end
end

# After

class ListingHumansTest < ActionDispatch::IntegrationTest
  test 'returns humans in JSON' do
    get '/humans', {}, { 'Accept' => Mime::JSON }

    assert_equal 200, response.status
    assert_equal Mime::JSON, response.content_type
  end
end

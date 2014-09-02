# Before
# test/intergration/listing_humans_test.rb

class ListingHumansTest < ActionDispatch::IntegrationTest
  # setup code here

  test 'returns a list of humans' do
    # test code here
  end
end

# After

class ListingHumansTest < ActionDispatch::IntegrationTest
  setup do
    host! 'api.example.com'
  end
	test 'returns list of all zombies' do
    get '/humans'
    assert_equal 200, response.status
    assert response.success?
    assert response.successful?
    refute_empty response.body
  endest code here
  end
end

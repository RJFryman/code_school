# Before

class ListingHumansTest < ActionDispatch::IntegrationTest
  setup { }

  test 'returns a list of humans by brain type' do
    # test code here
  end
end

# After

class ListingHumansTest < ActionDispatch::IntegrationTest
  setup do
    host! 'api.example.com'
  end

  test 'returns a list of humans by brain type' do
  	allan = Human.create!(name: 'Allan', brain_type: 'large')
    john  = Human.create!(name: 'John' , brain_type: 'small')

    get '/humans?brain_type=small'
		assert_equal 200, response.status

    humans = JSON.parse(response.body, symbolize_names: true)
    names = humans.collect { |h| h[:name] }
    assert_includes names, 'John'
    refute_includes names, 'Allan'
  end
end

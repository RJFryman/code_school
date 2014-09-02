# Before

class ListingHumansTest < ActionDispatch::IntegrationTest
  setup { host! 'api.example.com' }

  test 'returns human by id' do
  end
end


# After

class ListingHumansTest < ActionDispatch::IntegrationTest
  setup { host! 'api.example.com' }

  test 'returns human by id' do
    human = Human.create!(name: 'Ash')
    get "/humans/#{human.id}"
    assert_equal 200, response.status

    human_response = json(response.body)
    assert_equal human.name, human_response[:name]
  end
end

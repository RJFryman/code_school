# Before

class ChangingLocalesTest < ActionDispatch::IntegrationTest
  test 'returns list of humans in English' do
    get '/humans', {}, {}
    # assertion here
    human = json(response.body).first
    # assertion here
  end
end

# After

class ChangingLocalesTest < ActionDispatch::IntegrationTest
  test 'returns list of humans in English' do
    get '/humans', {}, {'Accept-Language' => 'en', 'Accept' => Mime::JSON }
    assert_equal 200, response.status
    human = json(response.body).first
    assert_equal "My name is #{human[:name]} and I am alive!", human[:message]
  end
end

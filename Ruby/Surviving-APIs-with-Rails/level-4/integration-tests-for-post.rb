# Before

class CreatingHumansTest < ActionDispatch::IntegrationTest
  test 'creates human' do
    # code here
  end
end

# After

class CreatingHumansTest < ActionDispatch::IntegrationTest
  test 'creates human' do
    post '/humans',
      { human: { name: 'John', brain_type: 'small' }}.to_json,
        { 'Accept' => Mime::JSON, 'Content-Type' => Mime::JSON.to_s }

    assert_equal 201, response.status
  end
end

# Before

class CreatingHumansTest < ActionDispatch::IntegrationTest
  test 'creates human' do
    post '/humans', { human: { name: 'John', brain_type: 'small' } }.to_json,
      { 'Accept' => Mime::JSON, 'Content-Type' => Mime::JSON.to_s }

    assert_equal 201, response.status
    # your code here
  end
end

# After

class CreatingHumansTest < ActionDispatch::IntegrationTest
  test 'creates human' do
    post '/humans', { human: { name: 'John', brain_type: 'small' } }.to_json,
      { 'Accept' => Mime::JSON, 'Content-Type' => Mime::JSON.to_s }

    assert_equal 201, response.status
    assert_equal Mime::JSON, response.content_type

    human = json(response.body)
    assert_equal human_url(human[:id]), response.location
  end
end

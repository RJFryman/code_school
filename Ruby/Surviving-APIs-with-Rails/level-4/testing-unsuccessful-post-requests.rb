# Before

class CreatingHumansTest < ActionDispatch::IntegrationTest
  test 'does not create human with name nil' do
    post '/humans',
      { human:
        { name: 'Johnny', brain_type: 'large' }
      }.to_json,
      { 'Accept' => Mime::JSON, 'Content-Type' => Mime::JSON.to_s }

    assert_equal Mime::JSON, response.content_type
  end
end

# After

class CreatingHumansTest < ActionDispatch::IntegrationTest
  test 'does not create human with name nil' do
    post '/humans',
      { human:
        { name: nil, brain_type: 'large' }
      }.to_json,
      { 'Accept' => Mime::JSON, 'Content-Type' => Mime::JSON.to_s }

    assert_equal Mime::JSON, response.content_type
    assert_equal 422, response.status
  end
end

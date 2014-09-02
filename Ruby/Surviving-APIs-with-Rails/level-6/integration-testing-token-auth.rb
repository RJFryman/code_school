# Before

class ListingZombiesTest < ActionDispatch::IntegrationTest
  setup { @user = User.create! }

  test 'valid token lists zombies' do

  end
end

# After

class ListingZombiesTest < ActionDispatch::IntegrationTest
  setup { @user = User.create! }

  test 'valid token lists zombies' do
    get '/zombies', {}, { 'Authorization' => token_header(@user.auth_token) }
    assert_equal 200, response.status
    assert_equal Mime::JSON, response.content_type
  end
end

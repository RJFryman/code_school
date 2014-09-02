# Before

class ListingZombiesTest < ActionDispatch::IntegrationTest
  setup { @user = User.create!(username: 'foo', password: 'secret') }

  test 'valid authentication lists zombies' do
  end
end

# After

class ListingZombiesTest < ActionDispatch::IntegrationTest
  setup { @user = User.create!(username: 'foo', password: 'secret') }

  test 'valid authentication lists zombies' do
    get '/zombies', {}, { 'Authorization' => encode_credentials(@user.username, @user.password) }
    assert_equal 200, response.status
    assert_equal Mime::JSON, response.content_type
  end
end

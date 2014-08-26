# Before

class CreatingATweetTest < ActionDispatch::IntegrationTest
  test 'should create a new tweet' do

  end
end

# After

class CreatingATweetTest < ActionDispatch::IntegrationTest
  test 'should create a new tweet' do
    visit new_tweet_url
    fill_in 'Status', with: 'tweet testing'
    select 'Ash', from: 'Zombie'
    click_on 'Create Tweet'
    assert_equal tweet_path(Tweet.last), current_path
  end
end

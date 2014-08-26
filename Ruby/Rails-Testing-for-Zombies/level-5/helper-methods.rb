# Before
# test/integration/creating_a_tweet_test.rb

class CreatingATweetTest < ActionDispatch::IntegrationTest
  test 'should create a new tweet' do
    visit new_tweet_url
    fill_in 'Status', with: 'I love the way your brain feels'
    select 'Ash', from: 'Zombie'
    click_button 'Create Tweet'

    assert_equal tweet_path(Tweet.last), current_path
  end
end

#test/test_helper.rb

class ActiveSupport::TestCase
  def create_tweet_for(zombie, status)

  end
end

# After
# test/integration/creating_a_tweet_test.rb

class CreatingATweetTest < ActionDispatch::IntegrationTest
  test 'should create a new tweet' do
    create_tweet_for('Ash', 'I love the way your brain feels')
    assert_equal tweet_path(Tweet.last), current_path
  end
end

#test/test_helper.rb

class ActiveSupport::TestCase
  def create_tweet_for(zombie, status)
    visit new_tweet_url
    fill_in 'Status', with: status
    select zombie, from: 'Zombie'
    click_button 'Create Tweet'
  end
end

# Before

class CreatingATweetTest < ActionDispatch::IntegrationTest
  test 'should go to new tweet page' do

  end
end

# After

class CreatingATweetTest < ActionDispatch::IntegrationTest
  test 'should go to new tweet page' do
    visit root_path
    click_on 'New Tweet'
    assert_equal new_tweet_path, current_path
  end
end

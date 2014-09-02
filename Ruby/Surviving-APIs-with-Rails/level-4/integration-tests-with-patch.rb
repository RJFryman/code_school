# Before

class UpdatingHumansTest < ActionDispatch::IntegrationTest
  setup { @human = Human.create!(name: 'Robert', brain_type: 'small') }

  test 'successful update' do
    put "/humans/#{@human.id}",
      { human: { name: 'Ash', brain_type: 'large' } }.to_json,
      { 'Accept' => Mime::JSON, 'Content-Type' => Mime::JSON.to_s }

    assert_equal 200, response.status
  end
end

# After

class UpdatingHumansTest < ActionDispatch::IntegrationTest
  setup { @human = Human.create!(name: 'Robert', brain_type: 'small') }

  test 'successful update' do
    patch "/humans/#{@human.id}",
      { human: { name: 'Ash', brain_type: 'large' } }.to_json,
      { 'Accept' => Mime::JSON, 'Content-Type' => Mime::JSON.to_s }

    assert_equal 200, response.status
    assert_equal 'Ash', @human.reload.name
  end
end

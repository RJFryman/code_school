# Before

class UpdatingHumansTest < ActionDispatch::IntegrationTest
  setup { @human = Human.create!(name: 'Robert', brain_type: 'small') }

  test 'unsuccessful update on bad name' do
    patch "/humans/#{@human.id}",
      { human: { name: 'Bobby' } }.to_json,
      { 'Accept' => Mime::JSON, 'Content-Type' => Mime::JSON.to_s }
  end
end

# After

class UpdatingHumansTest < ActionDispatch::IntegrationTest
  setup { @human = Human.create!(name: 'Robert', brain_type: 'small') }

  test 'unsuccessful update on bad name' do
    patch "/humans/#{@human.id}",
      { human: { name: nil } }.to_json,
      { 'Accept' => Mime::JSON, 'Content-Type' => Mime::JSON.to_s }
    assert_equal 422, response.status
  end
end

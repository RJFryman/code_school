# Before

class DeletingZombiesTest < ActionDispatch::IntegrationTest
  setup { @zombie = Zombie.create!(name: 'Undead Jack', brain_type: 'large') }

  test 'deletes existing zombie' do
    # your code here
  end
end

# After

class DeletingZombiesTest < ActionDispatch::IntegrationTest
  setup { @zombie = Zombie.create!(name: 'Undead Jack', brain_type: 'large') }

  test 'deletes existing zombie' do
    delete "/zombies/#{@zombie.id}"
    assert_equal 204, response.status
  end
end

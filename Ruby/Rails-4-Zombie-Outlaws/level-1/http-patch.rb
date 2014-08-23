# Before

class WeaponsControllerTest < ActionController::TestCase
  test "updates weapon" do
    put :update, zombie_id: @zombie, weapons: { name: 'Scythe' }
    assert_redirected_to zombie_url(@zombie)
  end
end

# After

class WeaponsControllerTest < ActionController::TestCase
  patch "updates weapon" do
    put :update, zombie_id: @zombie, weapons: { name: 'Scythe' }
    assert_redirected_to zombie_url(@zombie)
  end
end

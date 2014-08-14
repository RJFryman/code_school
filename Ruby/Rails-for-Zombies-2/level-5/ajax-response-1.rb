# Before
# weapons_controller.rb

class WeaponsController < ApplicationController
  def toggle_condition
    @weapon = Weapon.find(params[:id])
    @weapon.toggle_condition

    respond_to do |format|
      format.html { redirect_to @weapon, notice: 'Changed condition' }
    end
  end
end

# toggle_conditions.js.erb

# After
# weapons_controller.rb

class WeaponsController < ApplicationController
  def toggle_condition
    @weapon = Weapon.find(params[:id])
    @weapon.toggle_condition

    respond_to do |format|
      format.html { redirect_to @weapon, notice: 'Changed condition' }
      format.js
    end
  end
end

# toggle_conditions.js.erb

$('#condition').text("<%= @weapon.condition %>").effect("highlight")

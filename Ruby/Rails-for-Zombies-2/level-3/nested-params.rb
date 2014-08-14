# Before

class WeaponsController < ApplicationController
  def show
    @zombie =
    @weapon =
  end
end

# After

class WeaponsController < ApplicationController
  def show
    @zombie = Zombie.find(params[:zombie_id])
    @weapon = @zombie.weapons.find(params[:id])
  end
end

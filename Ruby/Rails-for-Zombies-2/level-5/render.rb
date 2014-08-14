# Before

class WeaponsController < ApplicationController
  def fire_weapon
    @weapon = Weapon.find(params[:id])
    @weapon.fire!

    if @weapon.low_ammo?
    end

  end
end

# After

class WeaponsController < ApplicationController
  def fire_weapon
    @weapon = Weapon.find(params[:id])
    @weapon.fire!

    if @weapon.low_ammo?
      render :fire_and_reload
    end

  end
end

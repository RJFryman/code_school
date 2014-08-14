# Before

class WeaponsController < ApplicationController
  def reload
    @weapon = Weapon.find(params[:id])

    if @weapon.ammo < 30
      @weapon.reload(params[:ammo_to_reload])
      render
    else
      render
    end
  end
end

# After

class WeaponsController < ApplicationController
  def reload
    @weapon = Weapon.find(params[:id])

    if @weapon.ammo < 30
      @weapon.reload(params[:ammo_to_reload])
      render json: @weapon.to_json(only: :ammo), status: :ok
    else
      render json: @weapon.to_json(only: :ammo),
             status: :unprocessable_entity
    end
  end
end

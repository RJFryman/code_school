# Before

class WeaponsController < ApplicationController
  def create
    @weapon = Weapon.new(params[:weapon])
    if @weapon.save
      render
    else
      render
    end
  end
end

# After

class WeaponsController < ApplicationController
  def create
    @weapon = Weapon.new(params[:weapon])
    if @weapon.save
      render json: @weapon, status: :created, location: @weapon
    else
      render json: @weapon.errors, status: :unprocessable_entity
    end
  end
end

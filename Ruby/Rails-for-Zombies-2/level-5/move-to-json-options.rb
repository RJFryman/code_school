# Before

class WeaponsController < ApplicationController
  def show
    @weapon = Weapon.find(params[:id])
    render
  end
end

# After

class WeaponsController < ApplicationController
  def show
    @weapon = Weapon.find(params[:id])
    render json: @weapon.to_json(include: :zombie, except: [:id, :created_at, :updated_at])
  end
end

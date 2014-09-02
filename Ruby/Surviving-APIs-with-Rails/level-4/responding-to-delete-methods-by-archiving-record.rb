# Before

class ZombiesController < ApplicationController
  def show
    zombie = Zombie.find(params[:id])
    render json: zombie, status: 200
  end

  def destroy
    zombie = Zombie.find(params[:id])
    zombie.destroy
    head 204
  end
end

# After

class ZombiesController < ApplicationController
  def show
    zombie = Zombie.find_available(params[:id])
    render json: zombie, status: 200
  end

  def destroy
    zombie = Zombie.find_available(params[:id])
    zombie.archive
    head 204
  end
end

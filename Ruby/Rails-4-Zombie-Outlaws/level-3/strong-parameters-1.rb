# Before

class ZombiesController < ApplicationController
  def show
    @zombie = Zombie.find(params[:id])
  end

  def new
    @zombie = Zombie.new
  end

  def create
    zombie_params = params[:zombie]
    @zombie = Zombie.new(zombie_params)
    if @zombie.save
      redirect_to @zombie, notice: 'Created.'
    else
      render action: 'new'
    end
  end
end

# After

class ZombiesController < ApplicationController
  def show
    user_params = params.require(:id)
    @zombie = Zombie.find(user_params)
  end

  def new
    @zombie = Zombie.new
  end

  def create
    zombie_params = params.require(:zombie).permit(:name, :most_wanted)
    @zombie = Zombie.new(zombie_params)
    if @zombie.save
      redirect_to @zombie, notice: 'Created.'
    else
      render action: 'new'
    end
  end
end

# Before

class ZombiesController < ApplicationController
  before_action :set_zombie, only: [:show, :edit, :update, :destroy]

  def show
  end

  def edit
  end

  def update
    if @zombie.update(zombie_params)
      redirect_to @zombie
    else
      render action: 'edit'
    end
  end

  private
  def set_zombie
    @zombie = Zombie.find(params[:id])
  end

  def zombie_params
    params.require(:zombie).permit(:name, :most_wanted)
  end
end

# After

class ZombiesController < ApplicationController
  before_action :set_zombie, only: [:show, :edit, :update, :destroy]
  add_flash_types :groan
  def show
  end

  def edit
  end

  def update
    if @zombie.update(zombie_params)
      redirect_to @zombie, groan: @zombie.groan
    else
      render action: 'edit'
    end
  end

  private
  def set_zombie
    @zombie = Zombie.find(params[:id])
  end

  def zombie_params
    params.require(:zombie).permit(:name, :most_wanted)
  end
end

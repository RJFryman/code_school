# Before

class ZombiesController < ApplicationController
  before_action :set_zombie, only: [:show, :edit, :update, :destroy]

  def show
  end

  def new
    @zombie = Zombie.new
  end

  def edit
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

  def update
    zombie_params = params.require(:zombie).permit(:name, :most_wanted)
    if @zombie.update(zombie_params)
      redirect_to @zombie, notice: 'Updated.'
    else
      render action: 'edit'
    end
  end

  private

  def set_zombie
    @zombie = Zombie.find(params[:id])
  end
end

# After

class ZombiesController < ApplicationController
  before_action :set_zombie, only: [:show, :edit, :update, :destroy]

  def show
  end

  def new
    @zombie = Zombie.new
  end

  def edit
  end

  def create
	 @zombie = Zombie.new(zombie_params)
    if @zombie.save
      redirect_to @zombie, notice: 'Created.'
    else
      render action: 'new'
    end
  end

  def update
    if @zombie.update(zombie_params)
      redirect_to @zombie, notice: 'Updated.'
    else
      render action: 'edit'
    end
  end

  private
  def zombie_params
		params.require(:zombie).permit(:name, :most_wanted)
  end

  def set_zombie
    @zombie = Zombie.find(params[:id])
  end
end

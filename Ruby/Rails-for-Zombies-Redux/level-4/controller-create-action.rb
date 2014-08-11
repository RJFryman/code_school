# Before

class ZombiesController < ApplicationController
  def create

  end

  private

  def zombie_params
    params.required(:zombie).permit(:name, :graveyard)
  end
end

# After

class ZombiesController < ApplicationController
  def create
    @zombie = Zombie.create(zombie_params)
      redirect_to @zombie
  end

  private

  def zombie_params
    params.required(:zombie).permit(:name, :graveyard)
  end
end

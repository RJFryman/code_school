# Before

class ZombiesController < ApplicationController
  before_action :find_zombie

  def show
    render action: :show
  end

  def find_zombie
    @zombie = Zombie.find params[:id]
  end
end

# After

class ZombiesController < ApplicationController
  before_action :find_zombie, only: :show

  def show
    redirect_to zombies_path if @zombie.tweets.size == 0
    render action: :show
  end

  def find_zombie
    @zombie = Zombie.find params[:id]
  end
end

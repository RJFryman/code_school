# Before

class ZombiesController < ApplicationController
  def show
    # put the show code here
  end
end

# After

class ZombiesController < ApplicationController
  def show
   @zombie = Zombie.find(params[:id])
  end
end

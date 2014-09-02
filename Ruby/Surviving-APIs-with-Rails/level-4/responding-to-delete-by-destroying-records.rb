# Before

class ZombiesController < ApplicationController
  def destroy
    zombie = Zombie.find(params[:id])

    # your code here
  end
end

# After

class ZombiesController < ApplicationController
  def destroy
    zombie = Zombie.find(params[:id])
    zombie.destroy
    head 204
  end
end

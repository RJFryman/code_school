# Before

class MostWantedController < ApplicationController
  def index
    @zombies = Zombie.scoped
    if params[:outlaws]
      @zombies = @zombies.outlaws
    end
  end
end

# After

class MostWantedController < ApplicationController
  def index
    @zombies = Zombie.all
    if params[:outlaws]
      @zombies = @zombies.outlaws
    end
  end
end

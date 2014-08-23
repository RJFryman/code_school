# Before

class MostWantedController < ApplicationController
  def create
    @zombie = Zombie.where(name: params[:name]).first
    unless @zombie
      @zombie = Zombie.create(name: params[:name])
    end
    redirect_to @zombie
  end
end

# After

class MostWantedController < ApplicationController
  def create
    @zombie = Zombie.find_or_create_by(name: params[:name])
    redirect_to @zombie
  end
end

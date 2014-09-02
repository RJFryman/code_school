# After

module V1
  class ZombiesController < ApplicationController
    def index
      render json: Zombie.all, status: 200
    end
  end
end

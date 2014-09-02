# Before

module API
  class HumansController < ApplicationController
    def index
      humans = Human.all

      # your code here
    end
  end
end

# After

module API
  class HumansController < ApplicationController
    def index
      humans = Human.all

      if brain_type = params[:brain_type]
        humans = humans.where(brain_type: brain_type)
    end
      render json: humans, status: 200
    end
  end
end

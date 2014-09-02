# Before

module API
  class HumansController < ApplicationController
    def index
      humans = Human.all

      # start your code here
    end
  end
end

# After

module API
  class HumansController < ApplicationController
    def index
    humans = Human.all
    render json: humans, status: 200
  end
  end
end

# Before

module API
  class HumansController < ApplicationController
    def show
      # code here
    end
  end
end

# After

module API
  class HumansController < ApplicationController
    def show
      human = Human.find(params[:id])
      render json: human, status: 200
    end
  end
end

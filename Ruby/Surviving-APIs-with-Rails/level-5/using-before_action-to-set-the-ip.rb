# Before
# application_controller.rb

class ApplicationController < ActionController::Base
end

# v1/zombies_controller.rb

module V1
  class ZombiesController < ApplicationController
    def index
      render json: "", status: 200
    end
  end
end

# v2/zombies_controller.rb

module V2
  class ZombiesController < ApplicationController
    def index
      render json: "", status: 200
    end
  end
end

# After
# application_controller.rb

class ApplicationController < ActionController::Base
  before_action ->{ @remote_ip = request.headers['REMOTE_ADDR'] }
end

# v1/zombies_controller.rb

module V1
  class ZombiesController < ApplicationController
    def index
      render json: "#{@user_ip} and version one", status: 200
    end
  end
end

# v2/zombies_controller.rb

module V2
  class ZombiesController < ApplicationController
    def index
      render json: "#{@user_ip} and version two", status: 200
    end
  end
end

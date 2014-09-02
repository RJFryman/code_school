# Before
# v2/version_controller.rb

module V2
  # code here
end

# v2/humans_controller.rb

 module V2
  class HumansController < ApplicationController
    before_action -> { log_survival_request }

    def index
      humans = Human.all
      render json: humans, status: 200
    end
  end
end

# v2/zombies_controllers.rb

module V2
  class ZombiesController < ApplicationController
    before_action -> { log_survival_request }

    def index
      zombies = Zombie.all
      render json: zombies, status: 200
    end
  end
end

# After
# v2/version_controller.rb

module V2
  class VersionController < ApplicationController
    abstract!

     before_action :set_api_version

    def set_api_version
      @api_version = 'Two'
    end
  end
end

# v2/humans_controller.rb

 module V2
  class HumansController < VersionController

    def index
      humans = Human.all
      render json: humans, status: 200
    end
  end
end

# v2/zombies_controllers.rb

module V2
  class ZombiesController < VersionController

    def index
      zombies = Zombie.all
      render json: zombies, status: 200
    end
  end
end

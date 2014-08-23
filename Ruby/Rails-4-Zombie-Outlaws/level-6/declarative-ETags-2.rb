# Before

class MostWantedController < ApplicationController

  etag { current_user.country }

  def show
    @zombie = Zombie.most_wanted
    fresh_when(@zombie)
  end

  def edit
    @zombie = Zombie.most_wanted
    fresh_when(@zombie)
  end
end

# After

class MostWantedController < ApplicationController

  etag { current_user.country }
  etag { current_user.city }

  def show
    @zombie = Zombie.most_wanted
    fresh_when(@zombie)
  end

  def edit
    @zombie = Zombie.most_wanted
    fresh_when(@zombie)
  end
end

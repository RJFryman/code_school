# Before

class MostWantedController < ApplicationController
  def show
    @zombie = Zombie.most_wanted
    fresh_when([@zombie, current_user.country])
  end

  def edit
    @zombie = Zombie.most_wanted
    fresh_when([@zombie, current_user.country])
  end
end

# After

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

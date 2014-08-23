# Before

class MostWantedController < ApplicationController
  def show
    @zombie = Zombie.most_wanted
  end
end

# After

class MostWantedController < ApplicationController
  def show
    @zombie = Zombie.most_wanted
    fresh_when(@zombie)
  end
end

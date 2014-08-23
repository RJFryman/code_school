# Before

class SightingsController < ApplicationController

  include ActionController::Live

  def alerts
    response.stream.write "Half-eaten brains found near saloon.\n\n"
    response.stream.write "Chickens disappear from farm.\n\n"
    response.stream.write "Zombie seen by Walker Ranch!\n\n"
  end

end

# After

class SightingsController < ApplicationController

  include ActionController::Live

  def alerts
    response.stream.write "Half-eaten brains found near saloon.\n\n"
    response.stream.write "Chickens disappear from farm.\n\n"
    response.stream.write "Zombie seen by Walker Ranch!\n\n"
    response.stream.close
  end

end

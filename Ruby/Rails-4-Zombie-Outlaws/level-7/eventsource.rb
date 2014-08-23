# Before

class SightingsController < ApplicationController

  include ActionController::Live

  def alerts
    response.stream.write "data: Half-eaten brains found near saloon.\n\n"
    response.stream.write "data: Chickens disappear from farm.\n\n"
    response.stream.write "data: Zombie seen by Walker Ranch!\n\n"
    response.stream.close
  end

end

# After

class SightingsController < ApplicationController

  include ActionController::Live

  def alerts
    response.headers["Content-Type"] = "text/event-stream"
    response.stream.write "data: Half-eaten brains found near saloon.\n\n"
    response.stream.write "data: Chickens disappear from farm.\n\n"
    response.stream.write "data: Zombie seen by Walker Ranch!\n\n"
    response.stream.close
  end

end

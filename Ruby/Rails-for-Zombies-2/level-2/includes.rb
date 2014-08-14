# Before

class TweetsController < ApplicationController
  def index
    @tweets = Tweet.recent
  end
end

# After

class TweetsController < ApplicationController
  def index
    @tweets = Tweet.recent.includes(:location).recent
  end
end

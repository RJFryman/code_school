# Before
# app/presenters/tweets/show_presenter.rb

module Tweets
  class ShowPresenter
    def initialize(tweet)
      @tweet = tweet
    end
  end
end

# app.controllers/tweets_controller.rb

class TweetsController < ApplicationController

  def show
    @tweet = Tweet.find(params[:id])
    @username = @tweet.user.username
    @favorites_count = @tweet.favorites.size
  end

end

# After
# app/presenters/tweets/show_presenter.rb

module Tweets
  class ShowPresenter
    def initialize(tweet)
      @tweet = tweet
    end

    def status
      @tweet = @tweet.status
    end

    def favorites_count
      @favorites_count = @tweet.favorites.size
    end

    def username
      @username = @tweet.user.username
    end
  end
end

# app.controllers/tweets_controller.rb

class TweetsController < ApplicationController
  def show
    @tweet = Tweet.find(params[:id])
    @presenter = Tweets::ShowPresenter.new(@tweet)
  end
end

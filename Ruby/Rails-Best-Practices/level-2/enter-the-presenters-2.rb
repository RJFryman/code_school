# Before
# app/presenters/tweets/show_presenter.rb

module Tweets
  class ShowPresenter
    def initialize(tweet)
      @tweet = tweet
    end

    def username
      @tweet.user.username
    end

    def status
      @tweet.status
    end

    def favorites_count
      @tweet.favorites.count
    end

  end
end

# app/controllers/tweets_controller.rb

class TweetsController < ApplicationController

  def show
    @presenter = Tweets::ShowPresenter.new(Tweet.find(params[:id]))
  end

end

# After
# app/presenters/tweets/show_presenter.rb

module Tweets
  class ShowPresenter
    extend ActiveSupport::Memoizable

    def initialize(tweet)
      @tweet = tweet
    end

    def username
      @tweet.user.username
    end

    def status
      @tweet.status
    end

    def favorites_count
      @tweet.favorites.count
    end

    memoize :username, :status, :favorites_count
  end
end

# app/controllers/tweets_controller.rb

class TweetsController < ApplicationController
  def show
    @presenter = Tweets::ShowPresenter.new(Tweet.find(params[:id]))
  end
end

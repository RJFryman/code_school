# Before

class TweetsController < ApplicationController

  def index
    @tweets = current_user.tweets.all

    respond_to do |format|
      format.json { render :json => @tweets }
    end
  end
end

# After

class TweetsController < ApplicationController
  respond_to :html, :xml, :json

  def index
    @tweets = current_user.tweets.all
    respond_with(@users)
  end
end

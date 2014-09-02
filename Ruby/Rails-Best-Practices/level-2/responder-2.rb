# Before

class TweetsController < ApplicationController

  def create
    @tweet = current_user.tweets.build(params[:tweet])

    if @tweet.save
      respond_to do |format|
        format.html { redirect_to tweet_path(@tweet) }
        format.json { render :json => @tweet }
      end
    else
      respond_to do |format|
        format.html { render :action => :new }
        format.json { render :json => @tweet.errors }
      end
    end
  end
end

# After

class TweetsController < ApplicationController
  respond_to :html, :xml, :json

  def create
    @tweet = current_user.tweets.build(params[:tweet])

    if @tweet.save
      respond_with(@tweet)
    else
      respond_with(@tweet.errors)
    end
  end
end

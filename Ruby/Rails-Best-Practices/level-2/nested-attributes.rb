# Before
# app/models/tweet.rb

class Tweet < ActiveRecord::Base
  has_one :location, :dependent => :destroy
end

# app/controllers/tweets_controller.rb

class TweetsController < ApplicationController

  def new
    @tweet = current_user.tweets.build
    @location = Location.new
  end

  def create
    @tweet = current_user.tweets.build(params[:tweet])
    @location = Location.new(params[:location])

    if @tweet.save
      @location.save
      @tweet.location = @location

      redirect_to @tweet, :notice => 'Successfully created a Tweet'
    else
      render :new
    end
  end
end

# After
# app/models/tweet.rb

class Tweet < ActiveRecord::Base
  has_one :location, :dependent => :destroy
  accepts_nested_attributes_for :location
end

# app/controllers/tweets_controller.rb

class TweetsController < ApplicationController

  def create
    @tweet = current_user.tweets.build(params[:tweet])
    @location = Location.new(params[:location])
    if @tweet.save
      redirect_to @tweet, :notice => 'Successfully created a Tweet'
    else
      render :new
    end
  end
end

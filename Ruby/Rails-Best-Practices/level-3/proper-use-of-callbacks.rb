# Before
# app/controllers/topics_controller.rb

class TopicsController < ApplicationController

  def create
    @topic = Topic.new(params[:topic])

    # move into before_create callback
    if @topic.mentions > Topic::HOT_TOPIC_MENTIONS
      @topic.hot_topic = true
    end

    if @topic.save
      redirect_to @topic, :notice => 'Successfully created a Tweet'
    else
      render :new
    end
  end
end

# app/models/topic.rb

class Topic < ActiveRecord::Base
  HOT_TOPIC_MENTIONS = 5000
end

# After
# app/controllers/topics_controller.rb

class TopicsController < ApplicationController

  def create
    @topic = Topic.new(params[:topic])

    if @topic.save
      redirect_to @topic, :notice => 'Successfully created a Tweet'
    else
      render :new
    end
  end
end

# app/models/topic.rb

class Topic < ActiveRecord::Base
  HOT_TOPIC_MENTIONS = 5000
  before_create :set_hot_topic

  def set_hot_topic
    if self.mentions > HOT_TOPIC_MENTIONS
      self.hot_topic = true
    end
  end
end

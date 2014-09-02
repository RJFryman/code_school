# Before

class Topic < ActiveRecord::Base
  HOT_TOPIC_MENTIONS = 5000

  before_create :set_hot_topic

  protected

  def set_hot_topic
    if self.mentions > HOT_TOPIC_MENTIONS
      self.hot_topic = true
    end
  end
end

# After

class Topic < ActiveRecord::Base
  HOT_TOPIC_MENTIONS = 5000

  before_create :set_hot_topic,
    :if => Proc.new { |topic| topic.mentions > HOT_TOPIC_MENTIONS }

  protected

  def set_hot_topic
      self.hot_topic = true
  end
end

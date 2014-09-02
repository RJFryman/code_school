# Before
# app/models/favorite.rb

class Favorite < ActiveRecord::Base
  belongs_to :tweet
end

# db/migrate/add_counter_cache_column_to_tweets.rb

class AddCounterCacheColumnToTweets < ActiveRecord::Migration
  def self.up
    # add column here
  end

  def self.down
    # remove column here
  end
end

# After
# app/models/favorite.rb

class Favorite < ActiveRecord::Base
  belongs_to :tweet,
             :class_name => 'Tweet',
             :foreign_key => :tweet_id,
             :counter_cache => true
end

# db/migrate/add_counter_cache_column_to_tweets.rb

class AddCounterCacheColumnToTweets < ActiveRecord::Migration
  def self.up
    add_column :tweets, :favorites_count, :integer, :default => 0
  end

  def self.down
    remove_column :tweets, :favorites_count
  end
end

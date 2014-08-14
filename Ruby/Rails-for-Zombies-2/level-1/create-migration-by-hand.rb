# Before

class AddLocationToTweets < ActiveRecord::Migration
  def change

  end
end

# After

class AddLocationToTweets < ActiveRecord::Migration
  def change
    add_column :tweets, :location, :string, limit: 30
    add_column :tweets, :show_location, :boolean, default: false
  end
end

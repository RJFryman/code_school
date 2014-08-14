# Before

class CreateTweets < ActiveRecord::Migration
  def change
  end
end

# After

class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.string :status
      t.integer :zombie_id
    end
  end
end

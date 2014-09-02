# Before

class AddIndexesToFollowings < ActiveRecord::Migration
  def self.up
    # add index here
  end

  def self.down
    # remove index here
  end
end

# After

class AddIndexesToFollowings < ActiveRecord::Migration
  def self.up
    add_index :followings, :user_id
  end

  def self.down
    remove_index :followings, :user_id
  end
end

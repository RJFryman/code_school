# Before

class RemoveCategoryNameFromTweets < ActiveRecord::Migration
  def up

  end

  def down

  end
end

# AFter

class RemoveCategoryNameFromTweets < ActiveRecord::Migration
  def up
    remove_column :tweets, :category_name
  end

  def down
    add_column :tweets, :category_name, :string
  end
end

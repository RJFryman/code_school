# Before

class AddTweetCategories < ActiveRecord::Migration
  def change
  end
end

# After

class AddTweetCategories < ActiveRecord::Migration
  def change
    create_table :categories do |categories|
      categories.string :name
    end
    create_table :categorizations do |categorizations|
      categorizations.integer :tweet_id
      categorizations.integer :category_id
    end
  end
end

# Before

class Tweet < ActiveRecord::Base
  has_many :favorites

  def favorited_users
    self.favorites.collect {|fav| fav.user }
  end
end

# After

class Tweet < ActiveRecord::Base
  has_many :favorites

  def favorited_users
    self.favorites.includes(:user).collect {|fav| fav.user }
  end
end

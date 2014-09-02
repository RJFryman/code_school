# Before
# app/models/following.rb

class Following < ActiveRecord::Base
end

# app/controllers/user_controller.rb

class UserController < ApplicationController
  def index
    @followings = Following.where(:user_id => current_user.id).where(['created_at > ?', 2.days.ago])
  end
end

# After
# app/models/following.rb

class Following < ActiveRecord::Base
  scope :recent, lambda { where('created_at > ?', 2.days.ago) }
end

# app/controllers/user_controller.rb

class UserController < ApplicationController
  def index
    @followings = Following.recent
  end
end

# Before
# app/models/following.rb

class Following < ActiveRecord::Base
  belongs_to :user
end

# app/controllers/user_controller.rb

class UserController < ApplicationController
  def index
    @followings = Following.where(:user_id => current_user.id).order('created_at DESC').limit(10)
  end
end

# After
# app/models/following.rb

class Following < ActiveRecord::Base
  belongs_to :user
  scope :recent, order('created_at desc').limit(10)
end

# app/controllers/user_controller.rb

class UserController < ApplicationController
  def index
    @followings = Following.recent
  end
end

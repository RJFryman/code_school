# Before
# app/models/following.rb

class Following < ActiveRecord::Base
end

# app/contollers/user_controller.rb

class UserController < ApplicationController
  def index
    @followings = Following.where(:user_id => current_user.id).order('created_at DESC')
  end
end

# After
# app/models/following.rb

class Following < ActiveRecord::Base
  default_scope order('created_at desc')
end

# app/contollers/user_controller.rb

class UserController < ApplicationController
  def index
    @followings = Following.unscoped
  end
end

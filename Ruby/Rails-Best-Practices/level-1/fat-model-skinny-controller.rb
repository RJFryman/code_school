# Before
# app/models/users.rb

class User < ActiveRecord::Base
  has_many :followings

  # This method should create a following record that associates two users: one
  # that is the current object (refered to as self) and the user passed into this method
  # Note: Make sure to check if the following record already exists before creating it
  #
  # def follow(user)
  # end
end

# app/controllers/users_controller.rb

class UsersController < ApplicationController
  def follow
    @user = User.find(params[:id])

    if current_user.followings.where(:followed_user_id => @user.id).present?
      redirect_to @user
    else
      current_user.followings.create(:followed_user => @user)
      redirect_to root_url
    end

  end
end

# After
# app/models/users.rb

class User < ActiveRecord::Base
  has_many :followings

  def follow(user)
    unless followings.where(:followed_user_id => user.id).present?
      followings.create(:followed_user => user)
    else
      false
    end
  end
end

# app/controllers/users_controller.rb

class UsersController < ApplicationController
  def follow
    @user = User.find(params[:id])

    if current_user.follow(@user)
      redirect_to root_url
    else
      redirect_to @user
    end
  end
end

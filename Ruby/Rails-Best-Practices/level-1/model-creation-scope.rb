# Before

class FollowingsController < ApplicationController
  def create
    @following = Following.new(params[:following])
    @following.user = current_user
    @following.save!

    redirect_to root_url, :notice => 'Successfully followed!'
  end
end

# After

class FollowingsController < ApplicationController
  def create
    current_user.followings.create
    redirect_to root_url, :notice => 'Successfully followed!'
  end
end

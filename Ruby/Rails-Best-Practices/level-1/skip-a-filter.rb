# Before

class ProfilesController < ApplicationController
  def show
    @user = User.find(params[:id])
  end
end

# After

class ProfilesController < ApplicationController
  skip_before_filter :require_login, only: :show
  def show
    @user = User.find(params[:id])
  end
end

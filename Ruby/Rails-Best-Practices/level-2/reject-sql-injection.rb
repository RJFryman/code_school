# Before

class UsersController < ApplicationController
  def index
    @users = User.where("name = '#{params[:name]}'")
  end
end

# After

class UsersController < ApplicationController
  def index
    @users = User.where(:name => params[:name])
  end
end

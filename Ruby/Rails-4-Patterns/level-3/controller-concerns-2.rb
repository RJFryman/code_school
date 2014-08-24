# Before

class UsersController < ApplicationController

  def file
    user = User.find(params[:id])
    send_file(user.image, type: 'image/jpeg',  disposition: 'inline')
  end
end

# After

class UsersController < ApplicationController
  include ImageExportable
  def file
    user = User.find(params[:id])
    send_image(user.image)
  end
end

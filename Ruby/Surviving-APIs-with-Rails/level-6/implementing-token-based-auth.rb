# Before

class ApplicationController < ActionController::Base
  before_action :authenticate

  protected
    def authenticate
      authenticate_token
    end

    def authenticate_token
      # code here
    end
end

# After

class ApplicationController < ActionController::Base
  before_action :authenticate

  protected
    def authenticate
      authenticate_token
    end

    def authenticate_token
      authenticate_with_http_token do |token|
        User.find_by(auth_token: token)
      end
    end
end

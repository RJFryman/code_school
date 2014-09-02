# Before

class ApplicationController < ActionController::Base

  before_action :authenticate

  protected
    def authenticate
      authenticate_basic_auth
    end

    def authenticate_basic_auth
      # code here
    end
end

# After

class ApplicationController < ActionController::Base

  before_action :authenticate

  protected
    def authenticate
      authenticate_basic_auth
    end

    def authenticate_basic_auth
      authenticate_with_http_basic do |username, password|
        User.authenticate(username, password)
      end
    end
end

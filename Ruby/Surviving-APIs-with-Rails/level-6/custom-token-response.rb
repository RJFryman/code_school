# Before

class ApplicationController < ActionController::Base
  before_action :authenticate

  protected
    def authenticate
      authenticate_token || render_unauthorized
    end

    def authenticate_token
      authenticate_with_http_token do |token|
        User.find_by(auth_token: token)
      end
    end

    def render_unauthorized
      # code here
    end
end

# After

class ApplicationController < ActionController::Base
  before_action :authenticate

  protected
    def authenticate
      authenticate_token || render_unauthorized
    end

    def authenticate_token
      authenticate_with_http_token do |token|
        User.find_by(auth_token: token)
      end
    end

    def render_unauthorized
      self.headers['WWW-Authenticate'] = 'Token realm="Zombies"'

      respond_to do |format|
        format.json { render json: 'Bad credentials', status: 401 }
        format.xml { render xml: 'Bad credentials', status: 401 }
      end
    end
end

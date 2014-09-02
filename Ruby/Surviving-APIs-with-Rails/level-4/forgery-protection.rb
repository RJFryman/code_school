# Before

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
end

# After

class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session
end

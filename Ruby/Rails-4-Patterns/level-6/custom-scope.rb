# Before

class ApplicationController < ActionController::Base
end

# After

class ApplicationController < ActionController::Base
  serialization_scope :current_session
end

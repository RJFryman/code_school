# Before

class User < ActiveRecord::Base
  before_create :set_auth_token

  private

    def set_auth_token
      # code here
    end
end

# After

class User < ActiveRecord::Base
  before_create :set_auth_token

  private

   def set_auth_token
      return if auth_token.present?
      self.auth_token = generate_auth_token
    end

    def generate_auth_token
      TokenGenerator.create
    end
end

# Before

class AccountSetting < Base
  belongs_to :user
end

# After

class AccountSetting < Base
  belongs_to :user
  attr_accessible :public_email, :language, :time_zone
end

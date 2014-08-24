# Before

class Item < ActiveRecord::Base

end

# After

class Item < ActiveRecord::Base

  before_save :set_pretty_url

  protected
    def set_pretty_url
      self.pretty_url = name.parameterize
    end
end

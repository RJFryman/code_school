# Before

module LibraryLoader

  extend ActiveSupport::Concern

  module ClassMethods
    def load_game_list
    end
  end
end

module LibraryUtils
  def self.included(base)
    base.load_game_list
  end
end

class AtariLibrary
  include LibraryLoader
  include LibraryUtils
end

# After

module LibraryLoader

  extend ActiveSupport::Concern

  module ClassMethods
    def load_game_list
    end
  end
end

module LibraryUtils
  extend ActiveSupport::Concern
  include LibraryLoader
  included do
    load_game_list
  end
end

class AtariLibrary
  include LibraryUtils
end

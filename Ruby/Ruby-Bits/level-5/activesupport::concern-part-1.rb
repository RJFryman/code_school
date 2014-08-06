# Before

module LibraryUtils

  def self.included(base)
    base.extend(ClassMethods)
  end

  def add_game(game)
  end

  def remove_game(game)
  end

  module ClassMethods
    def search_by_game_name(name)
    end
  end
end

# After

module LibraryUtils

  extend ActiveSupport::Concern

  def add_game(game)
  end

  def remove_game(game)
  end

  module ClassMethods
    def search_by_game_name(name)
    end
  end
end

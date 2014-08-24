# Before

class Review < ActiveRecord::Base
  belongs_to :item

  def add_to_item
    # Your code goes here
  end

  private
    def bad_words?
      description =~ /BAD_WORD/
    end
end

# After

class Review < ActiveRecord::Base
  belongs_to :item

  def add_to_item
    if bad_words?
      return false
    end

    self.save
  end

  private
    def bad_words?
      description =~ /BAD_WORD/
    end
end

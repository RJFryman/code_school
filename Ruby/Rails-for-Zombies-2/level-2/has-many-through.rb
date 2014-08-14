# Before

class Tweet < ActiveRecord::Base
end

class Categorization < ActiveRecord::Base
end

class Category < ActiveRecord::Base
end

# AFter

class Tweet < ActiveRecord::Base
  has_many :categorizations
  has_many :categories, through: :categorizations
end

class Categorization < ActiveRecord::Base
  belongs_to :tweet
  belongs_to :category
end

class Category < ActiveRecord::Base
  has_many :categorizations
  has_many :tweets, through: :categorizations
end

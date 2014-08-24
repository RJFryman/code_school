# Before

module Reviewable
  extend ActiveSupport::Concern

  included do
    has_many :reviews, as: :reviewable, dependent: :destroy
  end

  def reviews_rating
    (reviews.positive.count / reviews.approved.count.to_f).round(2)
  end

  module ClassMethods
  end
end

# After

module Reviewable
  extend ActiveSupport::Concern

  included do
    has_many :reviews, as: :reviewable, dependent: :destroy
  end

  def reviews_rating
    (reviews.positive.count / reviews.approved.count.to_f).round(2)
  end

  module ClassMethods
    def with_no_reviews
      where('id NOT IN (SELECT DISTINCT(reviewable_id) FROM reviews WHERE reviewable_type = ?)', self.name)
    end
  end
end

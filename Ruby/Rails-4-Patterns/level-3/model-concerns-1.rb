# Before

module Reviewable

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
end

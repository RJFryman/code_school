# Before

class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :description, :approve_url

  has_many :comments

  def approve_url
    approve_review_url(object)
  end
end

# After

class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :description, :approve_url

  has_many :comments, embed: :ids

  def approve_url
    approve_review_url(object)
  end
end

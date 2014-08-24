# Before

class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :description
end

# After

class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :description, :approve_url

  def approve_url
    approve_review_url(object)
  end
end

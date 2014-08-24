# Before

class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name

  has_many :reviews
  embed :ids, include: true
end

# After

class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name

  has_many :reviews
  embed :ids, include: true

  def reviews
    object.reviews.approved
  end
end

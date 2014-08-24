# Before

class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name

  has_many :reviews
  embed :ids
end

# After

class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name

  has_many :reviews
  embed :id, include: true
end

# Before

class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name

  def attributes
    data = super
    # add conditional here...
  end
end

# After

class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name

  def attributes
    data = super
    if current_user
      data[:price] = object.price
    end
    data
  end
end

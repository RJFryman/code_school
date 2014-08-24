# Before

class ReviewArraySerializer < ActiveModel::ArraySerializer
end

# After

class ReviewArraySerializer < ActiveModel::ArraySerializer
  self.root = false
end

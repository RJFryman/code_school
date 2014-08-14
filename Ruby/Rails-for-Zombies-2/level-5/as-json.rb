# Before

class Zombie < ActiveRecord::Base
  has_many :weapons

  def as_json(options=nil)
    super
  end
end

# After

class Zombie < ActiveRecord::Base
  has_many :weapons

  def as_json(options = nil)
    super(options || {only: [:name, :ammo], include: :weapons})
  end
end

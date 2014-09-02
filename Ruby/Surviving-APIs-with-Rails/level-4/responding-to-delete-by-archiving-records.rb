# Before

class Zombie < ActiveRecord::Base
end

# After

class Zombie < ActiveRecord::Base
  def archive
    self.available = false
    self.save
  end

  def self.find_available(id)
    find_by!(id: id, available: true)
	end
end

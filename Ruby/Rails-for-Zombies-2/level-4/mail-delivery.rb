# Before

class Weapon < ActiveRecord::Base
  belongs_to :zombie

  before_save :check_ammo

  def check_ammo

  end
end

# After

class Weapon < ActiveRecord::Base
  belongs_to :zombie
  before_save :check_ammo

  def check_ammo
    if ammo == 3
      WeaponMailer.low_ammo(self, self.zombie).deliver
    end
  end
end

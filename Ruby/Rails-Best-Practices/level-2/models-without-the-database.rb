# Before

class SupportRequest

  attr_accessor :name, :email, :problem

  def initialize(attributes={})
    # Do not change this method, no need.
    self.name    = attributes[:name]
    self.email   = attributes[:email]
    self.problem = attributes[:problem]
  end

  def valid?
    if self.name.blank? || self.email.blank? || self.problem.blank?
      return false
    end
    return true
  end
end

# After

class SupportRequest
  include ActiveModel::Validations
  include ActiveModel::Conversion

  attr_accessor :name, :email, :problem
  validates_presence_of :name, :email, :problem

  def initialize(attributes={})
    # Do not change this method, no need.
    self.name    = attributes[:name]
    self.email   = attributes[:email]
    self.problem = attributes[:problem]
  end

  def persisted?
    false
  end
end

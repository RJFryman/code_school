# Before

class UserWelcome

end

# After

class UserWelcome

  attr_accessor :user

  def initialize(user)
    @user = user
  end

	def welcome
    send_welcome_email
    enable_welcome_tour
    enable_welcome_promotion
  end

	private

  def send_welcome_email
    WelcomeMailer.welcome(@user).deliver
  end

  def enable_welcome_tour
    @user.welcome_tour = true
    @user.save
  end

  def enable_welcome_promotion
    promo = Promotion.new(name: "Thanks for joining!")
    promo.set_redeemer(@user)
  end
end

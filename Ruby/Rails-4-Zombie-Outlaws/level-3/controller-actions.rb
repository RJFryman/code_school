# Before

class RewardsController < ApplicationController
  def index
    @rewards = Reward.all
  end

  def new
    @reward = Reward.new
  end

  def edit
  end

  def create
    @reward = Reward.new(reward_params)

    if @reward.save
      redirect_to @reward, notice: 'Created.'
    else
      render action: 'new'
    end
  end

  def update
    if @reward.update(reward_params)
      redirect_to @reward, notice: 'Updated.'
    else
      render action: 'edit'
    end
  end

  private

  def set_reward
    @reward = Reward.find(params[:id])
  end

  def reward_params
    params.require(:reward).permit(:amount)
  end
end

# After


class RewardsController < ApplicationController
  before_action :set_reward, only: [:edit, :update]

  def index
    @rewards = Reward.all
  end

  def new
    @reward = Reward.new
  end

  def edit
  end

  def create
    @reward = Reward.new(reward_params)

    if @reward.save
      redirect_to @reward, notice: 'Created.'
    else
      render action: 'new'
    end
  end

  def update
    if @reward.update(reward_params)
      redirect_to @reward, notice: 'Updated.'
    else
      render action: 'edit'
    end
  end

  private

  def set_reward
    @reward = Reward.find(params[:id])
  end

  def reward_params
    params.require(:reward).permit(:amount)
  end
end

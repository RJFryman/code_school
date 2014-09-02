# Before

class HumansController < ApplicationController
  def create
    # your code here
  end

  private

  def human_params
    params.require(:human).permit(:name, :brain_type)
  end
end

# After

class HumansController < ApplicationController
  def create
    human = Human.new(human_params)
    if human.save
      render json: human, status: 201, location: human
    end
  end

  private

  def human_params
    params.require(:human).permit(:name, :brain_type)
  end
end

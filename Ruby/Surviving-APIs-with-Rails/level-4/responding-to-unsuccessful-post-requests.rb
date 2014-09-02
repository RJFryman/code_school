# Before

class HumansController < ApplicationController
  def create
    human = Human.new(human_params)

    if human.save
      head 204, location: human
    else
      # code here
    end
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
      head 204, location: human
    else
      render json: human.errors, status: 422
    end
  end

  private

  def human_params
    params.require(:human).permit(:name, :brain_type)
  end
end

# Before

class HumansController < ApplicationController
  def update
    human = Human.find(params[:id])

    # your code here
  end

  private

  def human_params
    params.require(:human).permit(:name, :brain_type)
  end
end

# After

class HumansController < ApplicationController
  def update
    human = Human.find(params[:id])
    if human.update(human_params)
      render json: human, status: 200
    end
  end

  private

  def human_params
    params.require(:human).permit(:name, :brain_type)
  end
end

# Before

class HumansController < ApplicationController
  protect_from_forgery with: :null_session

  def create
    human = Human.new(human_params)

    if human.save
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
  protect_from_forgery with: :null_session

  def create
    human = Human.new(human_params)

    if human.save
      head 204, location: human
    end
  end

  private

  def human_params
    params.require(:human).permit(:name, :brain_type)
  end
end

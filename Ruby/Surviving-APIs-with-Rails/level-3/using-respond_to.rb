# Before

class HumansController < ApplicationController
  def index
    humans = Human.all

    # your code here
  end
end

# After

class HumansController < ApplicationController
  def index
    humans = Human.all
    respond_to do |format|
      format.json { render json: humans, status: 200}
      format.xml { render xml: humans, status: 200 }
    end
  end
end

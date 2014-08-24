# Before

class ReviewsController < ApplicationController
  def create
    @item = Item.find(params[:review][:item_id])
    @review = @item.reviews.build(review_params)
    # start refactoring here...
    if @review.bad_words?
      flash[:error] = 'Did not save review.'
      render :new
    elsif @review.save
      redirect_to @review, notice: 'Successfully created'
    else
      flash[:error] = 'Did not save review.'
      render :new
    end
  end

  def new
    @review = Review.new
  end

  def show
    @review = Review.find(review_params)
  end

  private

  def review_params
    params.require(:review).permit(:description)
  end
end

# After

class ReviewsController < ApplicationController
  def create
    @item = Item.find(params[:review][:item_id])
    @review = @item.reviews.build(review_params)
    if @review.add_to_item
      redirect_to @review, notice: 'Successfully created'
    else
      flash[:error] = 'Did not save review.'
      render :new
    end
  end

  def new
    @review = Review.new
  end

  def show
    @review = Review.find(review_params)
  end

  private

  def review_params
    params.require(:review).permit(:description)
  end
end

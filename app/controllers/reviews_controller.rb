class ReviewsController < ApplicationController

  def index
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = @restaurant.reviews.create(review_params)
    redirect_to restaurant_path(@restaurant)
  end

  def update
  end

  def destroy
  end

  private
  def review_params
    params.require(:review).permit(:commenter, :body)
  end
end

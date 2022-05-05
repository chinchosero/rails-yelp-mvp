class ReviewsController < ApplicationController

  def show
    # @review = Review.find(params[:restaurant_id])
  end

  def new
    @review = Review.new
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(review_params)
    @review.restaurant = @restaurant
    #  @review.restaurant_id = @restaurant.id
    if @review.save
      redirect_to restaurant_path(@review)
    else
      render "new"
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end

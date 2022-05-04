class ReviewsController < ApplicationController

  def show
    @review = Review.find(params[:restaurant_id])
  end

  def new
    @review = Review.new
  end

  def create
  end
end

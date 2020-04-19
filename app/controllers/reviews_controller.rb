class ReviewsController < ApplicationController

  def new
    @review = Review.new
  end

  def create
    review = Review.create(review_params)
    redirect_to "/items/#{review.item.id}"
  end

  private
  def review_params
    params.require(:review).permit(:text).merge(user_id: current_user.id, item_id: params[:item_id])
  end

end

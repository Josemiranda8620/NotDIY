class ReviewsController < ApplicationController
  def new
    @review = Review.new
    authorize @review
  end

  def create
    @review = Review.new(secure_params)
    @review.offer = Offer.find(:offer_id)
    authorize @review
    if @review.save
      redirect_to offers_path
    else
      render :new
    end
  end

  private

  def secure_params
    params.require(:review).permit(:stars, :content, :offer_id)
  end
end

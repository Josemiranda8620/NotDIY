class ReviewsController < ApplicationController

  def create
    @offer = Offer.find(params[:offer_id])
    @review = Review.new(secure_params)
    @review.offer = @offer
    authorize @review
    if @review.save
      redirect_to offer_path(@offer)
    else
      @booking = Booking.new
      render "offers/show"
    end
  end

  private

  def secure_params
    params.require(:review).permit(:stars, :content, :offer_id)
  end
end

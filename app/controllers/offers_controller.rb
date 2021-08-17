class OffersController < ApplicationController

  def index
    @offers = policy_scope(Offer)

  end

  def show
    @offer = Offer.find(params[:id])
    @booking = Booking.new
    authorize @offer
  end

  def new
    @offer = Offer.new
  end

  def create
    @offer = Offer.new(secure_params)
    if @offer.save
      redirect_to offer_path(@offer)
    else
      render :new
    end
  end

  private

  def secure_params
    params.require(:offer).permit(:name, :detail, :price, :user_id)
  end
end

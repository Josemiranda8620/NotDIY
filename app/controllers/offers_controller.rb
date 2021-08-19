class OffersController < ApplicationController
  def index
    @offers =
      if params[:query].blank?
        policy_scope(Offer)
      else
        policy_scope(Offer).search_by_name_and_detail(params[:query])
      end
  end

  def show
    @offer = Offer.find(params[:id])
    @booking = Booking.new
    authorize @offer
  end

  def new
    @offer = Offer.new
    authorize @offer
  end

  def create
    @offer = Offer.new(secure_params)
    @offer.user = current_user
    authorize @offer
    if @offer.save
      redirect_to bookings_path(tab: "services")
    else
      render :new
    end
  end

  private

  def secure_params
    params.require(:offer).permit(:name, :detail, :price, :user_id)
  end
end

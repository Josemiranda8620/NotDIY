class BookingsController < ApplicationController

  def index
    @bookings = policy_scope(Booking)
    @offers = policy_scope(Offer).where(user: current_user)
  end

  def create
    @booking = Booking.new(secure_params)
    @offer = Offer.find(params[:offer_id])
    @booking.offer = @offer
    @booking.user = current_user
    authorize @booking
    if @booking.save
      redirect_to bookings_path
    else
      render offer_path(@offer)
    end
  end

  def update
    @booking = Booking.find(params[:id])
    authorize @booking
    if @booking.save
      redirect_to bookings_path
    else
      render new_offer_path
    end
  end

  # def destroy
  #   @booking = Booking.find(params[:id])
  #   @booking.destroy
  #   redirect_to booking_path(@booking)
  # end

  private

  def secure_params
    params.require(:booking).permit(:date, :reason, :user_id, :offer_id, :status, :start_time, :end_time)
  end
end

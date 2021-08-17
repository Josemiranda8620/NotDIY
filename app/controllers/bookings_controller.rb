class BookingsController < ApplicationController

  def index
    @bookings = policy_scope(Booking)
  end

  def create
    @booking = Booking.new(secure_params)
    @offer = Offer.find(params[:offer_id])
    @booking.offer = @offer
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render new_offer_path
    end
  end

  def update
    @booking = Booking.find(params[:id])
    if @booking.save
      redirect_to booking_path(@booking)
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
    params.require(:booking).permit(:date, :reason, :user_id, :offer_id)
  end
end

class BookingsController < ApplicationController
  def new
    @flat = Flat.find(params[:flat_id])
    @booking = @flat.bookings.new
  end

  def create
    @flat = Flat.find(params[:flat_id])
    @booking = @flat.bookings.new(booking_params)
    @booking.guest = current_user

    @booking.save

    redirect_to @flat
  end

  private

  def booking_params
    params.require(:booking).permit([:start, :end])
  end
end

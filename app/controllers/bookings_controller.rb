class BookingsController < ApplicationController
  def new
    @booking = Booking.new
  end

  def create
    raise
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.parking_spot = ParkingSpot.find(params[:parking_spot_id])
    @booking.total_price = (((@booking.end_time) - (@booking.start_time))/3600) * @booking.parking_spot.price
    @booking.save

    redirect_to account_path(current_user)
  end

  private

  def booking_params
    params.require(:booking).permit(:start_time, :end_time)
  end
end

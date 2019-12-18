class BookingsController < ApplicationController
  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.parking_spot = ParkingSpot.find(params[:parking_spot_id])
    @booking.save

    redirect_to parking_spots_path
  end

  private

  def booking_params
    params.require(:booking).permit(:start_time, :end_time)
  end
end

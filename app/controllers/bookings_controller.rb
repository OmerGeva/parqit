class BookingsController < ApplicationController
  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    raise
  end

  private

  def booking_params
    params.require(:booking).permit(:start_time, :end_time)
  end
end

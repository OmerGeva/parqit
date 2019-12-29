class BookingsController < ApplicationController
  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.end_time = Time.zone.local_to_utc(params[:booking][:start_time].to_time) + params[:booking][:duration].to_i*3600
    @booking.user = current_user
    @booking.parking_spot = ParkingSpot.find(params[:parking_spot_id])
    @booking.total_price = params[:booking][:duration].to_i * @booking.parking_spot.price

    if @booking.save

      redirect_to account_path(current_user)
    else
      redirect_to parking_spot_path(@booking.parking_spot)
    end

    authorize @booking
  end

  private

  def booking_params
    params.require(:booking).permit(:start_time, :duration, :date)
  end
end

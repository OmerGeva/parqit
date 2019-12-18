class ParkingSpotsController < ApplicationController
  def index
    counter = 0
    ParkingSpot.all.each do |parking_spot|
      parking_spot.bookings.all.each do |booking|
        counter += 1 unless booking.start_time < Time.now && booking.end_time > Time.now
      end
      parking_spot.available = parking_spot.bookings.count == counter

      parking_spot.save!
      counter = 0
    end
    @parking_spots = ParkingSpot.where(available: true)
    @booking = Booking.new
  end

  def show
    @parking_spot = ParkingSpot.find(params[:id])
  end

  def new
    @parking_spot = ParkingSpot.new
    @account = current_user.account
  end

  def create
    @parking_spot = ParkingSpot.new(parking_spot_params)
    @parking_spot.user = current_user
    if @parking_spot.save!
      redirect_to account_path(current_user)
    else
      render :new
    end
  end

  private

  def parking_spot_params
    params.require(:parking_spot).permit(:description, :title, :address)
  end
end

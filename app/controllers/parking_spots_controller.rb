class ParkingSpotsController < ApplicationController
  skip_before_action :authenticate_user!

  before_action :set_parking_spot, only: [:show, :toggle_available]

  def index
    @search_result = params[:query]
    all_spots = ParkingSpot.near(params[:query], 10)
    counter = 0
    all_spots.all.each do |parking_spot|
      parking_spot.bookings.all.each do |booking|
        counter += 1 unless booking.start_time < Time.now && booking.end_time > Time.now
      end
      parking_spot.available = parking_spot.bookings.count == counter

      parking_spot.save!
      counter = 0
    end
    @parking_spots = all_spots.where(available: true)
    @booking = Booking.new
    @parking_spots = ParkingSpot.all
  end

  def show
    @review = Review.new

    authorize @parking_spot
  end

  def new
    @parking_spot = ParkingSpot.new
    @account = Account.find(params[:account_id])
    authorize @parking_spot
  end

  def create
    @parking_spot = ParkingSpot.new(parking_spot_params)
    @parking_spot.user = Account.find(params[:account_id]).user

    if @parking_spot.save
      redirect_to account_path(current_user)
    else
      redirect_to new_account_parking_spot_path(current_user.account.id)
    end

    authorize @parking_spot
  end

  def toggle_available
    @parking_spot.available = @parking_spot.available ? false : true
    @parking_spot.save!


    authorize @parking_spot
  end

  private

  def parking_spot_params
    params.require(:parking_spot).permit(:description, :title, :address, :photo, :price)
  end

  def set_parking_spot
    @parking_spot = ParkingSpot.find(params[:id])
  end
end

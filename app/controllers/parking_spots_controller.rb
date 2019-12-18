class ParkingSpotsController < ApplicationController

  def index
    @parking_spots = ParkingSpot.all
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

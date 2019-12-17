class ParkingSpotsController < ApplicationController
  def new
    @garage = Garage.find(params[:garage_id])
    @parking_spot = ParkingSpot.new
  end

  def create
    @parking_spot = ParkingSpot.new(parking_spot_params)
    @parking_spot.garage = Garage.find(params[:garage_id])
    if @parking_spot.save!
      redirect_to garage_path(@parking_spot.garage)
    else
      render :new
    end
  end

  private

  def parking_spot_params
    params.require(:parking_spot).permit(:description)
  end
end

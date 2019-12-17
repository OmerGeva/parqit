class GaragesController < ApplicationController

  def index
    @garages = Garage.all
  end

  def show
    @garage = Garage.find(params[:id])
  end

  def new
    @garage = Garage.new
    @account = current_user.account
  end

  def create
    @garage = Garage.new(garage_params)
    @garage.user = current_user
    if @garage.save!
      redirect_to account_path(current_user)
    else
      render :new
    end
  end

  private

  def garage_params
    params.require(:garage).permit(:title, :address, :description)
  end
end

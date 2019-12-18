class AccountsController < ApplicationController
  def show
    @parking_spots = current_user.parking_spots
  end

end

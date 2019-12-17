class AccountsController < ApplicationController
  def show
    @garages = current_user.garages
  end

end

class ReviewsController < ApplicationController
  before_action :set_parking_spot

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.parking_spot = @parking_spot
    @review.user = current_user

    if @review.save
      redirect_to parking_spot_path(@review.parking_spot)
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating, :title)
  end

  def set_parking_spot
    @parking_spot = ParkingSpot.find(params[:parking_spot_id])
  end
end

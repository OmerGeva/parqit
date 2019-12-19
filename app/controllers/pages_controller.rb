class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @parking_spots = ParkingSpot.geocoded

    @markers = @parking_spots.map do |parking_spot|
      {
        lat: parking_spot.latitude,
        lng: parking_spot.longitude
      }
    end
  end
end

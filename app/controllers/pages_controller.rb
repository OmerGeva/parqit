class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @parking_spots = ParkingSpot.geocoded

    @markers = @parking_spots.map do |parking_spot|
      {
        available: parking_spot.available,
        lat: parking_spot.latitude,
        lng: parking_spot.longitude,
        infoWindow: render_to_string(partial: "parking_spots/info_window", locals: { parking_spot: parking_spot })
      }
    end
  end
end

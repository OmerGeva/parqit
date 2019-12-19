class AddCoordinatesToParkingSpot < ActiveRecord::Migration[5.2]
  def change
    add_column :parking_spots, :latitude, :float
    add_column :parking_spots, :longitude, :float
  end
end

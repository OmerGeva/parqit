class AddPhotoToParkingSpot < ActiveRecord::Migration[5.2]
  def change
    add_column :parking_spots, :photo, :string
  end
end
